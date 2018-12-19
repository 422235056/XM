<template>
  <div class="footer">
       <!-- footer -->
    <table width="95%" height="300px">
      <tr>
        <td><a href="#">新手上路</a></td>
        <td><a href="#">支付说明</a></td>
        <td><a href="#">商品配送</a></td>
        <td><a href="#">售后服务</a></td>
        <td rowspan="6" class="footer_img">
          <div class="footer_img1">
            <img src="../../img/footer/APP.png" width="85%">
            <p class="footer_p1">风向APP</p>
          </div>
        </td>
        <td rowspan="6" class="footer_img">
          <div class="footer_img2">
            <img src="../../img/footer/WX.jpg">
            <p class="footer_p2">风向公众号</p>
          </div>
        </td>
        <td rowspan="6">
          <div class="footer_dh">
            <h1>400-8213-162</h1>
            <p>周一至周日8:00-18:00</p>
            <p>(仅收市话费)</p>
          </div>
        </td>
      </tr>
      <tr>
        <td rowspan="5">
          <div class="footer_div1">
            <a href="#" class="footer_a">注册与登录</a>
            <a href="#" class="footer_a">常见问题</a>
            <a href="#" class="footer_a">注册协议</a>
            <a href="#" class="footer_a">预约相关</a>
            <a href="#" class="footer_a">关于我们</a>   
          </div>       
        </td>
        <td rowspan="5">
          <div class="footer_div2">
            <a href="#" class="footer_a">第三方平台</a>
            <a href="#" class="footer_a">更多支付</a>
            <a href="#" class="footer_a">物流查询</a>
          </div>
        </td>
        <td rowspan="5">
          <div class="footer_div3">
            <a href="#" class="footer_a">运费说明</a>
            <a href="#" class="footer_a">配送范围</a>
          </div>
        </td>
        <td rowspan="5">
          <div class="footer_div4">
            <a href="#" class="footer_a">退货条件</a>
            <a href="#" class="footer_a">配送时间</a>
            <a href="#" class="footer_a">提货地址</a>
            <a href="#" class="footer_a">退款说明</a>
          </div>
        </td>        
      </tr>
    </table>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  }
};
</script>

<style scoped>
/* footer设置*/
.footer{
  width: 100%;
  margin-left: 3%;
  margin-top: 5%;
}
/* a标签取消下划线 */
a{
  text-decoration: none;
}
/* 二维码图片-文字位置 */
.footer .footer_img1{
    margin-left:5rem;
    margin-bottom: 10rem;
}
.footer .footer_p1{
  font-size: 1rem;
  margin-top: -0.1rem;
}
/* 公众号图片-文字位置 */
.footer .footer_img2{
    margin-bottom: 10rem;
}
.footer .footer_p2{
  font-size: 1rem;
  margin-top: -0.1rem;
}
/* 二维码图片宽度 */
.footer .footer_img{
    width:12rem;
}
/* 联系方式 */
.footer .footer_dh{
    margin-bottom: 8rem;
}
/* a标签字体*/
.footer table tr td a{
    color:#000;
}
.footer table tr td a:hover{
  color:#a6a;
}
.footer table tr td .footer_a{
    display:block;
    font:500 0.8rem "微软雅黑";
    color: #666;
    line-height: 1.2rem;
}
/* 最下面div位置 */
.footer div.footer_div1{
    margin-bottom: 9.5rem;
}
.footer div.footer_div2{
    margin-bottom: 12rem;
}
.footer div.footer_div3{
    margin-bottom: 13.5rem;
}
.footer div.footer_div4{
    margin-bottom: 11rem;
}
</style>
