$.ajax({
    url:"http://127.0.0.1:3000/index/lc",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
	  var html=``;
      parent=document.querySelector("body .body_lc");
      html=``;
      for(var p of res){
        var {title,details,price,href,pic}=p;
        //97~106
        html+=` <a href="products_list.html" class="body_lc_a">
        <img src=${pic} alt="" class="body_lc_img">
        <span>第一个商品</span>
      </a>`
      }
      html=html+` <button>查看更多全球资讯</button>`;
      parent.innerHTML=html;
    }
});