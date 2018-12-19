<template>
  <div class="home">
    <!-- banner图 -->
    <div class="body_banner">
      <img src="../../img/index/banner1.png">
    </div>
    <p class="body_biaoti">全球资讯</p>
    <!-- 主楼层 -->
    <el-row class="body_lc">
      <el-col :span="8" v-for="item in lc" :key="item.pid">
        <router-link to="/productList" class="body_lc_a">
          <img :src="item.pic" class="body_lc_img">
        </router-link>
      </el-col>  
    </el-row>
    <button onclick="window.location.href='products.html'" class="body_lc_button">查看更多全球资讯</button>
    <!-- 子组件==>轮播图 -->
    <app-carousel></app-carousel>
    <!-- lC 1 ==> 无疆行者-->
    <div class="body_lc1">
      <div class="body_lc1_top">
          <a href="products_list.html"><img src="../../img/floor/LC1_zt.jpeg"></a>
      </div>
      <div class="body_lc1_bottom">
        <div class="body_lc1_left">
          <ul v-for="item in lc1_1" :key="item.pid">
             <li><a href="products.html"><img :src="item.img"></a></li>`
          </ul> 
        </div>
        <div class="body_lc1_right">
          <ul v-for="item in lc1_2" :key="item.pid">
             <li><a href="products.html"><img :src="item.img"></a></li>
          </ul>
        </div>
      </div>
    </div>
    <!-- lC 2 ==> 良工巧匠-->
    <div class="body_lc2">
      <div class="body_lc2_top">
          <a href="products_list.html"><img src="../../img/floor/LC2_zt.jpeg"></a>
      </div>
      <div class="body_lc2_bottom">
        <div class="body_lc2_left">
          <ul v-for="item in lc2_1" :key="item.pid">
            <li>
              <a href="products.html"><img :src="item.img"></a>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul> 
        </div>
        <div class="body_lc2_right">
          <ul v-for="item in lc2_2" :key="item.pid">
            <li>
              <a href="products.html"><img :src="item.img"></a>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- louCeng 3 ==> 奇妙杂货 -->
    <div class="body_lc2" id="lc3">
        <div class="body_lc2_top">
            <a href="products_list.html"><img src="../../img/floor/LC3_zt.jpeg"></a>
        </div>
        <div class="body_lc2_bottom">
          <div class="body_lc2_left">
            <ul v-for="item in lc3_1" :key="item.pid">
              <li>
                <a href="products.html"><img :src="item.img"></a>
                <div class="body_lc2_intro">
                  <p class="body_lc2_p1">{{item.title}}</p>
                  <p class="body_lc2_p2">{{item.details}}</p>
                  <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
                </div>
              </li>
            </ul> 
          </div>
          <div class="body_lc2_right">
            <ul v-for="item in lc3_2" :key="item.pid">
              <li>
                <a href="products.html"><img :src="item.img"></a>
                <div class="body_lc2_intro">
                  <p class="body_lc2_p1">{{item.title}}</p>
                  <p class="body_lc2_p2">{{item.details}}</p>
                  <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
                </div>
              </li>
            </ul>
          </div>
        </div>
    </div>
    <!-- louCeng 4 ==> 数码极客 -->
    <div class="body_lc2" id="lc4">
      <div class="body_lc2_top">
          <a href="products_list.html"><img src="../../img/floor/LC4_zt.jpeg"></a>
      </div>
      <div class="body_lc2_bottom">
        <div class="body_lc2_left">
          <ul v-for="item in lc4_1" :key="item.pid">
            <li>
              <router-link to="products.html"><img :src="item.img"></router-link>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul> 
        </div>
        <div class="body_lc2_right">
          <ul v-for="item in lc4_2" :key="item.pid">
            <li>
              <a href="products.html"><img :src="item.img"></a>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- louCeng 5 ==> 居家暖男 -->
    <div class="body_lc2" id="lc5">
      <div class="body_lc2_top">
        <a href="products_list.html"><img src="../../img/floor/LC5_zt.jpeg" alt=""></a>
      </div>
      <div class="body_lc2_bottom">
        <div class="body_lc2_left">
          <ul v-for="item in lc5_1" :key="item.pid">
            <li>
              <a href="products.html"><img :src="item.img"></a>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul> 
        </div>
        <div class="body_lc2_right">
          <ul v-for="item in lc5_2" :key="item.pid">
            <li>
              <a href="products.html"><img :src="item.img"></a>
              <div class="body_lc2_intro">
                <p class="body_lc2_p1">{{item.title}}</p>
                <p class="body_lc2_p2">{{item.details}}</p>
                <p class="body_lc2_p3"> {{item.place}}  ¥<span>{{item.price}}</span></p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
import Carousel from './carousel'
export default {
  name: "Home",
  components:{
    appCarousel:Carousel
  },
  data() {
    return {
      lc:[],
      lc1_1:[],
      lc1_2:[],
      lc2_1:[],
      lc2_2:[],
      lc3_1:[],
      lc3_2:[],
      lc4_1:[],
      lc4_2:[],
      lc5_1:[],
      lc5_2:[]
    };
  },
  created(){
    //主楼层
    this.$axios.get('/index/lc')
    .then(response=>{
      this.lc=response.data.slice(0,9)   
      //console.log(this.lc)  
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
    //楼层1-->无疆行者
    this.$axios.get('/index/lc1')
    .then(response=>{
      this.lc1_1=response.data.slice(0,4) 
      this.lc1_2=response.data.slice(4,8)
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
    //楼层2-->良工巧匠
    this.$axios.get('/index/lc2')
    .then(response=>{
      this.lc2_1=response.data.slice(0,4) 
      this.lc2_2=response.data.slice(4,8)
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
    //楼层3-->奇妙杂货
    this.$axios.get('/index/lc3')
    .then(response=>{
      this.lc3_1=response.data.slice(0,4) 
      this.lc3_2=response.data.slice(4,8)
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
    //楼层4-->数码极客
    this.$axios.get('/index/lc4')
    .then(response=>{
      this.lc4_1=response.data.slice(0,4) 
      this.lc4_2=response.data.slice(4,8)
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
    //楼层5-->居家暖男
    this.$axios.get('/index/lc5')
    .then(response=>{
      this.lc5_1=response.data.slice(0,4) 
      this.lc5_2=response.data.slice(4,8)
    })
    .catch(error=>{
      console.log('网络错误',error)
    })
  },
  mounted(){

  }
};
</script>

<style scoped>
/* home背景颜色 */
.home {
  width: 100%
}
/* 设置li */
li{
  list-style-type: none;
}
/* banner图 */
.home div.body_banner img {
  width: 60%;
}
/* 主楼层--标题 */
.home p.body_biaoti {
  font: 600 1.8rem "微软雅黑";
  margin-top: 5rem;
  color: #5d126a;
}
/* 主楼层 */
.home .body_lc{
  width: 70%;
  margin-bottom: 5%;
  margin: 0 auto
}
/* 主楼层 a */
.home .body_lc .body_lc_a{
  width: 90%;
  height: 150px;
}
/* 主楼层 img */
.home .body_lc .body_lc_img {
  width: 80%;
  margin-bottom: 1rem;
}
/* 主楼层--长按钮 */
.home .body_lc_button {
  width: 65%;
  height: 2.1rem;
  color: #fff;
  background: #4c4c4c;
  font-size: 1.2rem;
  margin-bottom: 2rem;
}
/* 主楼层--长按钮:鼠标悬停 */
.home .body_lc_button:hover {
  background: #5d126a;
}
/* lc1 ==> 无疆行者*/
.home div.body_lc1 {
  width: 70%;
  margin: 0 auto;
}
/* lc1 上半部分 img */
.home div.body_lc1_top {
  width: 93%;
  margin: 0 auto;
}
.home div.body_lc1_top img{
  width: 100%;
}
/* lc1 下半部分*/
.home .body_lc1_bottom {
  width: 100%;
  display: flex;
  justify-content: space-between;
  margin-left: -1rem;
}
/* lc1 下半部分-- img */
.home .body_lc1_bottom ul li img {
  border: 1px solid #ddd;
  border-radius: 0.6rem;
  width: 95%;
  margin-top: 0.5rem;
}
/* lc1 下半部分--左边 */
.home .body_lc1_bottom .body_lc1_left {
  width: 45%;
}
.home .body_lc1_bottom .body_lc1_left li{
  margin-bottom: -2.2rem;
}
/* lc1 下半部分--右边 */
.home div.body_lc1_bottom div.body_lc1_right {
  width: 45%;
  margin-right: 0.8rem;
}
.home .body_lc1_bottom .body_lc1_right li{
  margin-bottom: -1.0rem;
}

/* lc2  ==> 良工巧匠*/
.home div.body_lc2 {
  width: 70%;
  margin: 0 auto;
  margin-top:1rem; 
}
/* lc2 上半部分 */
.home div.body_lc2_top {
  margin: 0 auto;
  width: 93%;
}
.home div.body_lc2_top img{
  width: 100%;
}
/* lc2 下半部分 */
.home div.body_lc2_bottom {
  display: flex;
  justify-content: space-between;
  width: 100%;
  margin-left: -1rem;
}
/* lc2 下半部分--图片 */
.home div.body_lc2_bottom ul li a img {
  height: 100%;
}
/* lc2 下半部分--li */
.home div.body_lc2_bottom ul li {
  width: 100%;
  height: 9rem;
  display: flex;
  justify-content: start;
  border: 1px solid #ddd;
  border-radius: 0.5rem;
  background: #fff;
}
/* lc2 下半部分--左边-img */
.home div.body_lc2_bottom .body_lc2_left ul li img{
  width:7rem;
  height: 80%;
  margin-top: 13%;
  margin-left: 9%;
}
/* lc2 下半部分--右边-img */
.home div.body_lc2_bottom .body_lc2_right ul li img{
  width:7rem;
  height: 80%;
  margin-top: 13%;
  margin-left: 9%;
}
/* lc2 下半部分--文字  */
.home div.body_lc2_bottom ul li div.body_lc2_intro {
  margin-top: 2%;
  margin-left: 30%;
  height: 6rem;
}
/* lc2 下半部分--文字-标题  */
.home div.body_lc2_bottom ul li div.body_lc2_intro p.body_lc2_p1 {
  font: 600 0.9rem "微软雅黑";
  text-align: end;
}
/* lc2 下半部分--文字-详情  */
.home div.body_lc2_bottom ul li div.body_lc2_intro p.body_lc2_p2 {
  font-size: 0.4rem;
  text-align: end;
  margin-top: 3%;
}
/* lc2 下半部分--文字-价格  */
.home div.body_lc2_bottom ul li div.body_lc2_intro p.body_lc2_p3 {
  color: #999;
  font-size: 0.9rem;
  text-align: end;
  margin-top: -0.2rem;
}
.home div.body_lc2_bottom ul li div.body_lc2_intro p.body_lc2_p3 span {
  font-size: 1.2rem;
  color: #612177;
}
/* lc2--左边  */
.home div.body_lc2_bottom div.body_lc2_left {
  width: 43%;
  margin-left: 0.8rem;
}
/* lc2--右边 */
.home div.body_lc2_bottom div.body_lc2_right {
  width: 43%;
  margin-right: 1.2rem;
}
</style>
