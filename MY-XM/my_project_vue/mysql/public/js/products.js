$(function(){
  function loadPage(pno=0){ 
      $.ajax({
        url:"http://127.0.0.1:3000/products/",
        type:"get",
        data:{pno},
        dataType:"json",
        success:function(data){
          var {pno,pageCount,products}=data;
          var html="";
          for(var {price,details,img,title,id} of products){
            html+=`<div class="product_div">
            <div class="product_div_img">
                <a href="product_details.html">
                    <img src="${img}">
                </a>
            </div>
            <div class="product_div_bottom">
              <p class="product_title">
                  <text class="title">${title}</text>
                  <text class="subtitle">${details}</text>            
              </p>
              <p class="product_price">
                ¥ ${price}
              </p>
            </div>
          </div>`
          }
          $("#productList").html(html);
  
          var html=`<li class="page-item"><a class="page-link bg-transparent" href="#">上一页</a></li>`;
          for(var i=1;i<=pageCount;i++){
            html+=`<li class="page-item ${pno==i-1?'active':''}"><a class="page-link ${pno!=i-1?'bg-transparent':'border'}" href="#">${i}</a></li>`;
          }
          html+=`<li class="page-item"><a class="page-link bg-transparent" href="#">下一页</a></li>`;
          var $page=$(".pagination")
          $page.html(html);
          if(pno==0)
            $page.children(":first").addClass("disabled")
          if(pno==pageCount-1)
            $page.children(":last").addClass("disabled")
        }
      })
  }
  loadPage();
  $(".pagination").on("click","a",function(e){
    e.preventDefault();
    var $a=$(this);
    if(!$a.parent().is(".disabled,.active")){
      if($a.html()=="上一页"){
        var pno=$a.parent().parent().children(".active").children().html()-2; 
      }else if($a.html()=="下一页"){
        var pno=$a.parent().parent().children(".active").children().html();
      }else{
        var pno=$a.html()-1;
      }
      loadPage(pno);
    }
  })
})