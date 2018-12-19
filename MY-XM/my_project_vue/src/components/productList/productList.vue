<template>
  <div class="productList">
      <!-- main -->
    <main class="main_bg"> 
      <!-- main daohang -->
      <div class="main_daohang">
        <ul class="left">
          <li><a href="#">全部</a></li>
          <li><a href="#">影音怪咖</a></li>
          <li><a href="#">无疆行者</a></li>
          <li><a href="#">数码极客</a></li>
          <li><a href="#">居家暖男</a></li>
          <li><a href="#">运动健将</a></li>
          <li><a href="#">美色型男</a></li>
          <li><a href="#">良工巧匠</a></li>
          <li><a href="#">妙手厨神</a></li>
          <li><a href="#">奇妙杂货</a></li>
        </ul>
        <ul class="right">
          <li><a href="#">价格</a></li>
          <li><a href="#">在售</a></li>
          <li><a href="#">预约</a></li>
        </ul>
      </div>
      <!-- main -->
      <div class="zhuti">
        <!-- 商品列表  -->
        <div class="product_list">
          <!-- 商品 1 -->
          <div class="product_div" v-for="item in list" :key="item.id">
            <div class="product_div_img">
                <router-link :to="'/productList/detail/'+item.id">
                    <img :src="item.img">
                </router-link>
            </div>
            <div class="product_div_bottom">
              <div class="product_title">
                  <div class="title"> {{item.title}} </div>
                  <div class="subtitle"> {{item.details}} </div>            
              </div>
              <p class="product_price">
                ¥ {{item.price}}
              </p>
            </div>
          </div>                                
        </div>
        <!-- 分页 -->
        <div class="block">
          <div class="block">
            <el-pagination @current-change="handleCurrentChange" :current-page.sync="currentPage" :page-size="12" layout="prev, pager, next, jumper" :total="10*pageCount">
            </el-pagination>
          </div>
        </div>
      </div>

    </main>
      
  </div>
</template>

<script>
export default {
  data() {
    return {
      currentPage: 1,
      list: [],
      pageCount: []
    };
  },
  methods: {
    handleCurrentChange(val) {
      console.log(`当前页: ${val}`);
      if (!val) {
        var pno = 0;
      } else {
        var pno = val - 1;
      }
      this.$axios
        .get("/products/?pno=" + pno)
        .then(response => {
          this.list = response.data.products;
          this.pageCount = response.data.pageCount;
        });
    }
  },
  created() {
    this.handleCurrentChange();
  }
};
</script>

<style scoped>
li {
  list-style-type: none;
}
/* main */
main.main_bg {
  margin-top: 50px;
  width: 100%;
}
/* main 导航 */
main .main_daohang {
  width: 100%;
  display: flex;
  justify-content: space-between;
}
/* 面包屑导航样式 */
main .main_daohang ul {
  display: flex;
}
/* 面包屑导航--位置 */
main .main_daohang ul li {
  margin-left: 0.6rem;
}
/* 面包屑导航--字体样式 */
main .main_daohang ul li a {
  color: #666;
  font-size: 0.8rem;
  text-decoration: none;
}
/* 面包屑导航--a标签悬停 */
main .main_daohang ul li a:hover {
  color: #a6a;
}
main .main_daohang ul.right {
  margin-right: 3rem;
}
/* main 商品列表 */
main .product_list {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}
/* 商品列表--商品1 */
main .product_list .product_div {
  border: 1px solid #ccc;
  margin: 0.2rem;
  width: 20%;
}
/* 商品悬停效果 */
main .product_list .product_div:hover {
  opacity: 0.6;
}
/* 商品图片 */
main .product_list .product_div .product_div_img img {
  width: 100%;
}
/* 商品介绍 */
main .product_list .product_div .product_div_bottom {
  background: linear-gradient(0deg, #ccd, #fff);
  height:4.2rem;
}
/* 商品1--文字部分 */
main .product_list .product_div .product_div_bottom .product_title {
  font-size: 0.8rem;
}
/* 商品1--标题 */
main .product_list .product_div .product_div_bottom .product_title .title {
  display: block;
}
/* 商品1--副标题 */
main .product_list .product_div .product_div_bottom .product_title .subtitle {
  font-size: 0.6rem;
  color: #aaa;
  display: block;
  overflow: hidden; /*超出部分隐藏*/
  white-space: nowrap; /*不允许换行 */
  text-overflow: ellipsis; /*超出部分补充... */
}
/* 商品1--价格 */
main .product_list .product_div .product_div_bottom .product_price {
  font-size: 1.4rem;
  color: #a6a;
  margin-top:0.1rem;
}
</style>
