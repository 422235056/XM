// (async function(){
//   var res=await 
//lc
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
	  var html=``;
      parent=document.querySelector("body .body_lc");
      //全球资讯
      html=``;
      for(var p of res){
        var {title,details,price,href,pic}=p;
        html+=` <a href="#" class="body_lc_a">
        <img src=${pic} alt="" class="body_lc_img">
        <span>第一个商品</span>
      </a>`
      }
      html=html+` <button onclick="window.location.href='products.html'">查看更多全球资讯</button>`;
      parent.innerHTML=html;
    }
  });
//lc1  
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc1",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
      //无疆行者
      parent=document.querySelector("body .body_lc1 .body_lc1_bottom .body_lc1_left ul");
      html=``;
      for(var p of res.slice(0,4)){
        var {fid,img}=p;
        html+=` 
          <li><a href="products.html"><img src=${img} alt=""></a></li>`
      }
      parent.innerHTML=html;

	    var html1=``;
      parent=document.querySelector("body .body_lc1 .body_lc1_bottom .body_lc1_right ul");
      for(var p of res.slice(4,8)){
        var {fid,img}=p;
        html1+=` 
          <li><a href="products.html"><img src=${img} alt=""></a></li>`
      }
      parent.innerHTML=html1;
    }
  });
//lc2
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc2",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
      //良工巧匠
      parent=document.querySelector("body .body_lc2 .body_lc2_bottom .body_lc2_left ul");
      html=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC2_big_02.png" alt="" class="body_lc2_bigImg"></a>
    </li>`;
      for(var p of res.slice(1,4)){
        var {title,img,details,place,price}=p;
        html+=`<li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      parent.innerHTML=html;

	    var html1=``;
      parent=document.querySelector("body .body_lc2 .body_lc2_bottom .body_lc2_right ul");
      for(var p of res.slice(4,7)){
        var {title,img,details,place,price}=p;
        html1+=` <li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      html1+=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC2_big_01.png" alt="" class="body_lc2_bigImg"></a>
    </li>`;
      parent.innerHTML=html1;
    }
  });
//lc3  
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc3",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
      //奇妙杂货
      parent=document.querySelector("body #lc3 .body_lc2_bottom .body_lc2_left ul");
      html=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC3_big_02.png" alt="" class="body_lc2_bigImg"></a>
      </li>`;
      for(var p of res.slice(1,4)){
        var {title,img,details,place,price}=p;
        html+=`<li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      parent.innerHTML=html;

	    var html1=``;
      parent=document.querySelector("body #lc3 .body_lc2_bottom .body_lc2_right ul");
      for(var p of res.slice(4,7)){
        var {title,img,details,place,price}=p;
        html1+=` <li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      html1+=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC3_big_01.png" alt="" class="body_lc2_bigImg"></a>
    </li>`;
      parent.innerHTML=html1;
    }
  });
//lc4  
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc4",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
      //数码极客
      parent=document.querySelector("body #lc4 .body_lc2_bottom .body_lc2_left ul");
      html=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC3_big_02.png" alt="" class="body_lc2_bigImg"></a>
      </li>`;
      for(var p of res.slice(1,4)){
        var {title,img,details,place,price}=p;
        html+=`<li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      parent.innerHTML=html;

      var html1=``;
      parent=document.querySelector("body #lc4 .body_lc2_bottom .body_lc2_right ul");
      for(var p of res.slice(4,7)){
        var {title,img,details,place,price}=p;
        html1+=` <li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      html1+=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC4_big_01.png" alt="" class="body_lc2_bigImg"></a>
    </li>`;
      parent.innerHTML=html1;
    }
  });  
//lc5  
  $.ajax({
    url:"http://127.0.0.1:3000/index/lc5",
    type:"get",
    dataType:"json",
    success:function(res){
      var p;    
      var parent;   
      //居家暖男
      parent=document.querySelector("body #lc5 .body_lc2_bottom .body_lc2_left ul");
      html=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC5_big_02.png" alt="" class="body_lc2_bigImg"></a>
      </li>`;
      for(var p of res.slice(1,4)){
        var {title,img,details,place,price}=p;
        html+=`<li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      parent.innerHTML=html;

      var html1=``;
      parent=document.querySelector("body #lc5 .body_lc2_bottom .body_lc2_right ul");
      for(var p of res.slice(4,7)){
        var {title,img,details,place,price}=p;
        html1+=` <li>
          <a href="products.html"><img src=${img} alt=""></a>
          <div class="body_lc2_intro">
            <p class="body_lc2_p1">${title}</p>
            <p class="body_lc2_p2">${details}</p>
            <p class="body_lc2_p3"> ${place}  ¥<span>${price}</span></p>
          </div>
        </li>`
      }
      html1+=`<li class="body_lc2_big">
      <a href="products.html"><img src="img/floor/LC5_big_01.png" alt="" class="body_lc2_bigImg"></a>
    </li>`;
      parent.innerHTML=html1;
    }
  });    
  
// })()
//测试: http://localhost:3000/index.html->F12
//结果:[{},{},{},{},{},{}]