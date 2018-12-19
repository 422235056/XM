<template>
  <div id="app">
    <!-- 头部组件 -->
    <app-header></app-header>

    <!-- 其他组件 -->
    <router-view/>
    <!-- 回到顶部小图标 -->
    <div class="right_bottom_icon">
        <p class="icon_QR" @mouseenter="enter()" @mouseleave="leave()"><img src="./img/app/code.png"></p> 
        <a href="#"><img src="./img/app/to-top.png" ></a> 
    </div>
    <div class="QRcode" v-show="hover==true"><img src="./img/app/EQcode.png"></div>

    <!-- 底部组件 -->
    <app-footer></app-footer>

  </div>
</template>

<script>
import Header from "./components/header/header.vue";
import Footer from "./components/footer/footer.vue";
export default {
  name: "App",
  data(){
    return{
      hover:false
    }  
  },
  components: {
    appHeader: Header,
    appFooter: Footer
  },
  methods:{
    enter(){
      this.hover=true
    },
    leave(){
      this.hover=false
    }
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  width: 80%;
  margin: 0 auto;
}
body {
  width: 100%;
  background: radial-gradient(#fff, rgb(144, 133, 144));
}
/* 右下角小图标--回到顶部+二维码  */
body {
  position: relative;
}
.right_bottom_icon {
  position: fixed;
  right: 4rem;
  bottom: 6rem;
}
.right_bottom_icon img {
  display: block;
  width: 2.5rem;
  height: 2.5rem;
}
.QRcode {
  position: fixed;
  width: 6rem;
  height: 6rem;
  right: 7rem;
  bottom: 10rem;
}
.QRcode img {
  width: 100%;
}
</style>
