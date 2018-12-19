<template>
  <div class="carousel">
    <!-- 轮播图 -->
    <div class="body_lb">
      <el-carousel :interval="3000" type="card" height="16rem">
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_01.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_02.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_03.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_04.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_05.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_06.png"></a>
        </el-carousel-item>
        <el-carousel-item>
           <a href="products_list.html"><img src="../../img/floor/LB_07.png"></a>
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>

<script>

export default {
  data() {
    return {

    };
  },
  components:{

  }
};
</script>

<style scoped>
/* 轮播图 */
.carousel .body_lb{
  width: 65%;
  height: 20rem;
  margin:0 auto;
}
/* 轮播图--img */
.carousel .body_lb img{
  width: 12rem;
  height: 12rem;
}

</style>
