(async function(){
  //1,功能一: 商品详情图鼠标悬停小图大图跟着变
  $('.tw_left .left_min img').mouseover(function (){     
    var that = $(this);  
    //当鼠标移动到小图上的时候，获取到当前小图的图片地址
    var newUrl = that.attr('src');
    //改变大图的图片地址为当前小图的图片地址
    $('.tw_left .right_max img').attr('src',newUrl);
    //设置未选中小图透明度
    $('.tw_left .left_min img').css('opacity',0.7);
    //设置选中的小图的透明度
    that.css('opacity',1);
  }); 

  //2,功能二: 右下角小图标悬停显示二维码
  $(".right_bottom_icon .icon_QR img").hover(function(){
      $(".QRcode img").show();
  },function(){
      $(".QRcode img").hide();
  })

  // if(location.search.indexOf("lid=")!=-1){
  //   var lid=location.search.split("=")[1];
  //         //         ?lid=5   ?lid,5   5
  //   var res=await ajax({
  //     url:"http://localhost:3000/details",
  //     type:"get",
  //     data:`lid=${lid}`,
  //     dataType:"json"
  //   });
  //   var {product,specs,pics}=res;
  //   var {title,subtitle,price,promise}=product;
  //   //66~81
  //   var html=`<h6 class="font-weight-bold">${title}</h6>
  //   <h6><a class="small text-dark font-weight-bold" href="javascript:;">${subtitle}</a></h6>
  //   <div class="alert alert-secondary small" role="alert">
  //     <div>
  //       <span>学员售价：</span>
  //       <h2 class="d-inline text-primary font-weight-bold">¥${price.toFixed(2)}</h2>
  //     </div>
  //     <div>
  //       <span>服务承诺：</span>
  //       <span>${promise}</span>
  //     </div>
  //   </div>`
  //   var div=document.getElementById("details");
  //   div.innerHTML=html+div.innerHTML;

  //   var html="";
  //   //遍历specs中每个规格对象
  //   for(var s of specs){//每遍历一个规格对象，就创建一个a元素拼接到结果html字符串上
  //     //复制92行a到此，去掉开始a标签结尾的class="active"
  //     html+=`<a class="btn btn-sm btn-outline-secondary ${s.lid==lid?'active':''}" href="product_details.html?lid=${s.lid}">${s.spec}</a>`;
  //   }
  //   div.children[4].children[1].innerHTML=html;

  //   var html="";
  //   for(var p of pics){
  //     var {sm,md,lg}=p
  //     html+=`<li class="float-left p-1">
  //       <img src="${sm}" data-md="${md}" data-lg="${lg}">
  //     </li>`;
  //   }
  //   var ul=document.querySelector(
  //     "#div-lg+div>div>ul"
  //   );
  //   ul.innerHTML=html;
  //   ul.style.width=`${62*pics.length}px`;
  //   var mImg=document.querySelector(
  //     "#preview>div>img"
  //   );
  //   mImg.src=pics[0].md;
  //   var lgDiv=document.getElementById("div-lg");
  //   lgDiv.style.backgroundImage=`url(${pics[0].lg})`;
  // }

  // var $prev=
  //   $("#preview>div>div:last-child>img:first-child");
  // var $next=$prev.nextAll("img");
  // var $ul=$prev.next().children();
  // var moved=0,LIWIDTH=62;
  // $next.click(function(){
  //   var $next=$(this);
  //   if(!$next.is(".disabled")){
  //     moved++;
  //     $ul.css("marginLeft",-LIWIDTH*moved);
  //     $prev.removeClass("disabled");
  //     if($ul.children().length-4==moved){
  //       $next.addClass("disabled");
  //     }
  //   }
  // })
  // $prev.click(function(){
  //   var $prev=$(this);
  //   if(!$prev.is(".disabled")){
  //     moved--;
  //     $ul.css("marginLeft",-LIWIDTH*moved);
	//   $prev.removeClass("disabled");
  //     if($ul.children().length-7==moved){
  //       $prev.addClass("disabled");
  //     }
  //   }
  // })
  // var $mImg=$("#preview>div>img");
  // var $lgDiv=$("#div-lg");
  // $ul.on("mouseover","img",function(){
  //   var $img=$(this);
  //   var md=$img.attr("data-md");
  //   $mImg.attr("src",md);
  //   $lgDiv.css(
  //     "backgroundImage",`url(${$img.attr("data-lg")})`
  //   )
  // })
  // var $mask=$("#mask"), $smask=$("#super-mask");
  // var MSIZE=176,SMSIZE=352,MAX=SMSIZE-MSIZE;
  // $smask.hover(
  //   function(){
  //     $mask.toggleClass("d-none");
  //     $lgDiv.toggleClass("d-none");
  //   }
  // ).mousemove(function(e){
  //   var top=e.offsetY-MSIZE/2;
  //   var left=e.offsetX-MSIZE/2;
  //   if(top<0) top=0; else if(top>MAX) top=MAX;
  //   if(left<0) left=0; else if(left>MAX) left=MAX;
  //   $mask.css({top,left})
  //   $lgDiv.css(
  //     "backgroundPosition",
  //     `${-16/7*left}px ${-16/7*top}px`
  //   )
  // })
})()