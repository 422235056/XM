<template>
  <div class="detail">
    <main>
      <!-- 商品详情介绍-->
      <div class="product_tw">
        <!-- 左边 -->
        <div class="tw_left">
          <ul class="left_min">
            <li><img :src="list[0].img" @mouseover="enter1()"></li>
            <li><img src="../../img/detail/product_02.png" @mouseover="enter2()"></li>
            <li><img src="../../img/detail/product_03.png" @mouseover="enter3()"></li>
          </ul>
          <div class="right_max">
            <img :src="myimg==null?list[0].img:myimg">
          </div>
        </div>
        <!-- 右边 -->
        <div class="tw_right"> 
          <ul>
            <li class="tw_title_top">TrustBag(德国)</li>
            <li class="tw_title">{{list[0].title}}</li>
            <li class="tw_title_bottom">TrustBag</li>
            <li class="tw_price"><a href="#" class="tw_price_left">¥{{list[0].price}}</a><a href="#">国外仓发货</a></li>
            <li class="tw_subtitle">
              {{list[0].details}}
            </li>
            <li class="tw_detail">
              意大利机械工程师 Sabato Alterio 发明的 Nakefit 脚垫，
              贴上后看着与赤脚一样，但又能保护脚底。它具备防刮、防水、耐热和防滑功能，在沙滩，<br>
              岩石和路面上行走都不会伤脚。Nakefit 是一次性产品，
              穿戴也非常方便，撕开脚垫的贴膜，直接对准脚贴上，不用时撕下即可。 <br>
              虽然踩在脚底看不见，但 Nakefit 仍然提供了黑、荧光粉、浅蓝三种颜色选择。<br>
              光脚走在海边，返璞归真，亲近自然有 Nakefit 足矣。
            </li>
            <li class="tw_more">
              <p>
                更多购买渠道
              </p>
              <a href="#">官网</a>
            </li>            
          </ul> 
        </div>
      </div>
      <!-- 下面-图文 -->
      <div class="xm">
        <div class="tw_list">
          <ul>
            <li class="tw_list_left">
              <img :src="list[0].dimg">
            </li>
            <li class="tw_list_right">
                <p class="tw_title">
                    挑战一:裁纸刀攻击
                </p>
                <p class="tw_subtitle">
                    TrustBag 三防背包号称是地球上最安全的背包。虽说看起来与寻常健身包无异，但正如它的名字那样，
                    绝对是你外出时值得信赖的好伙伴，防弹防割还防盗，刀枪不入堪比金钟罩，是不是瞬间安全感爆表？
                </p> 
            </li>
          </ul>
        </div>
        <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                <img src="../../img/detail/product_05.png">
              </li>
              <li class="tw_list_right">
                  <p class="tw_title">
                      挑战二:行军刀攻击
                  </p>
                  <p class="tw_subtitle">
                      TrustBag 三防背包中间还有一层 RFID 防盗刷材质，防止信用卡或银行卡等个人资料被窃，多重保护你的个人资料；
                      另外贴心配备一把德国 Abus 安全锁，搭配老虎钳剪不断的袋口索条，出门只要把包随便找个地儿一锁，
                      就可以放心去玩耍啦~
                  </p>                 
              </li>             
            </ul>
          </div>
          <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                  <img src="../../img/detail/product_06.png">
              </li>
              <li class="tw_list_right">
                  <p class="tw_title">
                      挑战三:勇夺各大奖项
                  </p>
                  <p class="tw_subtitle"> 
                      夏天怎么可能不玩水，TrustBag 三防背包内部的尼龙材质还能做到100%防水，手机、相机之类的电子产品塞进包里，
                      只要收紧袋口，完全泡在水里都不用怕，意外被水泼就更不是问题了，背去海滩真是再方便不过啦。  
                  </p>                 
              </li>            
            </ul>
          </div>
          <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                    <img src="../../img/detail/product_07.png">
              </li>
              <li class="tw_list_right">
                  <p class="tw_title">
                      挑战四:gif图全方位展示
                  </p>
                  <p class="tw_subtitle">
                      HrustBag 新时代新玩法，同样的材质做成手套，不光能防刀割，
                      呵护你娇嫩的双手；甚至还能当作触屏手套，方便冬天户外戴着手套刷手机。
                      TrustBag 三防背包仅重350g，却能承载重达450kg的分量，完全不必担心装太多把包撑爆；
                      它虽然外在坚固，但触感却也柔软亲肤，随时能变枕头让你在旅途舒舒服服小憩一刻。  
                  </p>     
              </li>       
            </ul>
          </div>
          <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                  <img src="../../img/detail/product_08.png">
              </li>
              <li class="tw_list_right">
                <p class="tw_title">
                  挑战五:和baby一起行动
                </p>
                <p class="tw_subtitle">
                    TrustBag 还能这样用,不应该让baby整天只能被囚于婴儿车和小床上,世界这么大带着他(她)
                    出去多看看吧!!! 
                </p>         
              </li>     
            </ul>
          </div>
          <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                  <img src="../../img/detail/product_09.png">
              </li>
              <li class="tw_list_right">
                  <p class="tw_title">
                      挑战六:带上宠物去逛街
                  </p>
                  <p class="tw_subtitle">
                      宠物那么可爱,当然要带出去让别人一起欣赏呀!
                      多么干净的小宠物啊,怎么舍得让它在浑浊的世界苦苦跟随呢?
                      也许这才是宠物的正确打开方式吧!   
                  </p>              
              </li>     
            </ul>
          </div>    
          <div class="tw_list">
            <ul>
              <li class="tw_list_left">
                    <img src="../../img/detail/product_10.png">
              </li>
              <li class="tw_list_right">
                  <p class="tw_title">
                      挑战六:手套防砍系列
                  </p>
                  <p class="tw_subtitle">
                        TrustBag 刀砍斧凿也不怕,野外求生套装带你玩转丛林,背包与手套皆采用最新研制的P15O12C3合成材料打造,
                        可以让它受伤的利器还不曾出现在世界上!
                        手套和背包采用同样的材料打造,同样的耐操抗揍...
                  </p>  
              </li>     
            </ul>
          </div>                
      </div>

      <!-- comment -->
      <!-- 用户评论-上半区-商品参数 -->
      <div class="xm_comment_top">
        <div class="comment_title">
          参数规格
        </div>
        <ul class="canshu_one">
          <li class="canshu_one_left">
            <span>品牌</span>
            <span>TrustBag</span>
          </li>
          <li class="canshu_one_right">
            <span>品名</span>
            <span>TrustBag-T200</span>           
          </li>
        </ul>
        <ul class="canshu_two">
          <li class="canshu_two_left">
            <span>尺寸</span>
            <span>40*40cm</span>
          </li>
          <li class="canshu_two_right">
            <span>重量</span>
            <span>350g</span>
          </li>
        </ul>
      </div>
      <!-- 用户评论-下半区-评论 -->
      <div class="xm_comment_bottom">
        <div class="comment_title">
            商品评论
        </div>
        <ul class="pinglun">
          <li class="pinglun_left">
            <div>
                <ul class="use_comment">
                    <!-- 用户评论 -->
                    <li>
                      <div class="use_comment_one">
                        <div class="use_comment_one_left">用户名:尘油儿--2018.10.27.12.31</div>
                        <!-- 用户评论-星星 -->
                        <div class="shop-start">
                            <p class="star-after">
                                  ★★★★★
                            </p>
                            <p class="star-before" style="width:72%">
                                  ★★★★★
                            </p>
                        </div>
                      </div>
                      <div class="use_comment_two">
                        谁用谁知道,这种材质跟美队的钛合金盾有的一拼!
                      </div>
                    </li>
                    <li>
                        <div class="use_comment_one">
                            <div class="use_comment_one_left">用户名:尘油儿--2018.10.27.12.31</div>
                            <!-- 用户评论-星星 -->
                            <div class="shop-start">
                                <p class="star-after">
                                      ★★★★★
                                </p>
                                <p class="star-before" style="width:72%">
                                      ★★★★★
                                </p>
                            </div>
                          </div>
                          <div class="use_comment_two">
                            谁用谁知道,这种材质跟美队的钛合金盾有的一拼!
                          </div>                      
                    </li>                 
                    <li>
                        <div class="use_comment_one">
                            <div class="use_comment_one_left">用户名:尘油儿--2018.10.27.12.31</div>
                            <!-- 用户评论-星星 -->
                            <div class="shop-start">
                                <p class="star-after">
                                      ★★★★★
                                </p>
                                <p class="star-before" style="width:68%">
                                      ★★★★★
                                </p>
                            </div>
                          </div>
                          <div class="use_comment_two">
                            谁用谁知道,这种材质跟美队的钛合金盾有的一拼!
                          </div>                      
                    </li>
                    <li>
                        <div class="pinglun_more">
                          加载更多...
                        </div>               
                    </li>
                </ul>
            </div>
          </li>
          <li class="pinglun_right">
            <a href="#">
                没有能帮助你的信息吗<br>
                留下你的疑问吧
            </a>
          </li>
        </ul>
      </div>
    </main>
      
  </div>
</template>

<script>
import productList from '../productList/productList'
export default {
  name: "Detail",
  data() {
    return {
      id:this.$route.params.id,
      list:[
        {
          img:"",
          title:"",
          details:"",
          dimg:"",
          price:""
        }
      ],
      myimg:null,
      conversion:0
    };
  },
  methods:{
    //鼠标悬停在三个小图片显示相应的大图片
    enter1(){
      this.myimg=this.list[0].img
    },
    enter2(){
      this.myimg="http://127.0.0.1:3000/img/product_video/product_02.png"
    },
    enter3(){
      this.myimg="http://127.0.0.1:3000/img/product_video/product_03.png"
    }
  },
  watch: {
    //监听地址栏url的id变化,可保证id改变详情页也随之变化
    '$route'(to,from){
      var id=this.$route.params.id
      this.$axios
      .get('/details/list?id='+id)
      .then(response=>{
          this.list=response.data;
          this.myimg=this.list[0].img
      })
    }
  },
  created(){
    //根据product组件传递过来的id显示不同的detail页面
    this.$axios
    .get('/details/list?id='+this.id)
    .then(response=>{
        //console.log(response.data);
        this.list=response.data;
        //console.log(this.list[0].img)
        this.myimg=this.list[0].img
    })
  }
};
</script>

<style scoped>
li {
  list-style-type: none;
}
.detail{
  width: 80%;
  margin: 0 auto;
}
/*整体*/
main {
  margin-bottom: 10rem;
  width: 100%;
}
/*上面的图文部分*/
main .product_tw {
  display: flex;
  justify-content: space-between;
  width: 100%;
}
/* 图文介绍--左边 */
main .product_tw .tw_left {
  display: flex;
  width: 80%
}
/* 图文左边--小图-div*/
main .product_tw .tw_left .left_min{
  width: 30%;
  padding: 0;
}
/* 图文左边--小图-img*/
main .product_tw .tw_left .left_min img {
  width: 30%;
}
/* 图文左边--大图-div*/
main .product_tw .tw_left .right_max{
  width: 70%;
}
/* 图文左边--大图-img*/
main .product_tw .tw_left .right_max img {
  width: 90%;
}
/* 图文右边*/
main .product_tw .tw_right {
  width: 50%;
}
/* 图文右边--标题 */
main .product_tw .tw_right .tw_title_top,
.tw_title_bottom {
  font-size: 0.8rem;
  color: #666;
}
main .product_tw .tw_right .tw_title {
  font-size: 1.2rem;
  font-weight: 600;
}
/* 图文右边--价格 */
main .product_tw .tw_right .tw_price {
  display: flex;
  justify-content: space-between;
  padding-bottom: 0.6rem;
  border-bottom: 1px solid #aaa;
}
main .product_tw .tw_right .tw_price a {
  text-decoration: none;
  color: #a6a;
  font-size: 0.8rem;
}
main .product_tw .tw_right .tw_price a.tw_price_left {
  font-size: 1.2rem;
  font-weight: 600;
}
/* 图文右边--副标题-详细介绍 */
main .product_tw .tw_right .tw_subtitle {
  color: #a6a;
  margin-top: 1.4rem;
  margin-bottom: 0.5rem;
}
main .product_tw .tw_right .tw_detail {
  font-size: 0.8rem;
  color: #333;
  padding-bottom: 0.7rem;
  border-bottom: 1px solid #aaa;
  text-align:left;
}
/* 图文右边--更多-官网btn */
main .product_tw .tw_right .tw_more {
  display: flex;
  margin-top: 2rem;
}
main .product_tw .tw_right .tw_more a {
  margin-top: 0.6rem;
  text-decoration: none;
  text-align: center;
  font-size: 0.9rem;
  width: 2.8rem;
  height: 1.4rem;
  background: #fff;
  border: 1px solid #a6a;
  color: #000;
  margin-left: 1.2rem;
  border-radius: 5px;
}
main .product_tw .tw_right .tw_more a:hover {
  color: #a6a;
}
main .product_tw .tw_right .tw_more p {
  font-size: 0.9rem;
}
/* 下面的图文介绍部分 */
/* 整体设置 */
.xm {
  margin-top: 100px;
  margin-left: 20px;
  width: 1160px;
  border-top: 1px solid #ccc;
  padding-top: 50px;
}
/* 图文部分 */
.xm .tw_list ul {
  display: flex;
  justify-content: space-between;
  width: 100%;
  padding: 0;
}
/* 图文--图片部分 */
.xm .tw_list .tw_list_left {
  width: 60%;
}
.xm .tw_list .tw_list_left img {
  width: 100%;
}
/* 图文--文字 */
.xm .tw_list .tw_list_right {
  width: 35%;
  border-bottom: 1px solid #a6a;
}
/* 图文--文字-标题 */
.xm .tw_list .tw_list_right .tw_title {
  font-size: 1.4rem;
  color: #dee;
}
/* 图文--文字-内容 */
.xm .tw_list .tw_list_right .tw_subtitle {
  margin-top: 3.2rem;
  font-size: 0.9rem;
  color: #a6a;
}

/* 用户评论区 */
/* 用户评论--上半区-商品参数 */
.xm_comment_top {
  width: 100%;
  text-align: center;
  border-top: 1px solid #ccc;
  margin-top: 3.2rem;
}
/* 商品参数--标题 */
.xm_comment_top .comment_title {
  font-size: 1.4rem;
  margin-top: 0.9rem;
  color: #eed;
}
/* 商品参数--第一行 */
.xm_comment_top .canshu_one {
  margin-top: 1.9rem;
  display: flex;
  justify-content: space-around;
}
.xm_comment_top .canshu_one span {
  margin-left: 1.9rem;
  color: #a6a;
  font-size: 0.9rem;
}
/* 商品参数--第二行 */
.xm_comment_top .canshu_two {
  display: flex;
  justify-content: space-around;
  margin-left: -2px;
}
.xm_comment_top .canshu_two span {
  margin-left: 0.9rem;
  margin-right: 0.9rem;
  color: #a6a;
  font-size: 0.8rem;
}
.xm_comment_top .canshu_two .canshu_two_right {
  position: relative;
  left: -1.9rem;
}
/* 用户评论--下半区-评价 */
/* 整体 */
.xm_comment_bottom {
  width: 100%;
  text-align: center;
  border-top: 1px solid #ccc;
  margin-top: 3.1rem;
}
/* 用户评论区--设置两端对齐 */
.xm_comment_bottom .pinglun {
  display: flex;
  justify-content: space-between;
  margin-top: 1.2rem;
}
/* 用户评论区--标题 */
.xm_comment_bottom .comment_title {
  font-size: 1.3rem;
  margin-top: 0.9rem;
  color: #eed;
}
/* 用户评论区--评分or用户名区域 */
.xm_comment_bottom .use_comment_one {
  background: linear-gradient(0deg, #eee, #eff);
  display: flex;
  justify-content: space-between;
  width: 25rem;
  height: 1.2rem;
}
/* 用户评论区--用户名区域 */
.xm_comment_bottom .use_comment_one .use_comment_one_left {
  font-size: 0.7rem;
  color: #a6a;
  opacity: 0.8;
}
/* 用户评论区--历史留言板 */
.xm_comment_bottom .use_comment_two {
  margin-left: 0px;
  color: #666;
  font-size: 0.8rem;
  border: 1px solid #ccc;
  border-radius: 10px;
  width: 25rem;
  height: 1.9rem;
}
/* 用户评论区--加载更多 */
.xm_comment_bottom .pinglun_more {
  color: #eee;
  font-size: 0.8rem;
}
/*  星星 */
.shop-start {
  position: relative;
  margin-top: -1rem
}
.shop-start .star-after {
  color: #e2e2e2;
}
.shop-start .star-before {
  position: absolute;
  top: 0;
  left: 0;
  color: #ffd700;
  width: 90%;
  overflow: hidden;
}
/* 用户评论区域--右边-发表评论 */
.xm_comment_bottom .pinglun .pinglun_right {
  width: 21rem;
  height: 10rem;
  background: linear-gradient(0deg, #eee, #eff);
}
.xm_comment_bottom .pinglun .pinglun_right a {
  display: block;
  margin-top: 4rem;
  color: #a6a;
  list-style-type: none;
  font-size: 0.8rem;
}
.xm_comment_bottom .pinglun .pinglun_right a:hover {
  opacity: 0.8;
  font-size: 0.9rem;
}
</style>
