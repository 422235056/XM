$(function(){
  $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
  $.ajax({
    url:"header.html",
    type:"get",
    success:function(res){
      $(res).replaceAll("#header");
      var $input=
        $("#header .header_input");
      $input.click(function(){
        location.href=
          `http://127.0.0.1:3000/products.html`
      })
      $input.keyup(function(e){
        if(e.keyCode==13)
          $search.click()
      })      
      // if(location.search.indexOf("kw=")!=-1){
      //   //?kw=macbook
      //   var kw=location.search.split("=")[1]
      //   $input.val(decodeURI(kw));
      // }
    }
  })
})