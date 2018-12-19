<template>
  <div class="header">
        <!-- header -->
        <el-row>
            <!-- logo -->
            <el-col :span="6" >
                <router-link to="/home" class="logo">
                    <img src="../../img/header/logo5.png">
                </router-link>
            </el-col>
            <!-- 主导航区域 -->
            <el-col :span="6">
                <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect" background-color="rgba(0,0,0,0)" active-text-color="#a6a" text-color="#a6a">
                    <el-menu-item index="1">
                        <router-link to="/home" style="color:#a6a">首页</router-link>
                    </el-menu-item>
                    <el-submenu index="2">
                        <!-- 下拉菜单 -->
                        <template slot="title">
                            <router-link to="/productList">单品</router-link>
                        </template>
                        <el-menu-item index="2-1">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                影音怪咖
                            </router-link>
                        </el-menu-item>
                        <el-menu-item index="2-2">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                无疆行者
                            </router-link>                            
                        </el-menu-item>
                        <el-menu-item index="2-3">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                数码极客
                            </router-link>                             
                        </el-menu-item>
                        <el-menu-item index="2-4">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                居家暖男
                            </router-link>                              
                        </el-menu-item>
                        <el-menu-item index="2-5">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                美色型男
                            </router-link>                             
                        </el-menu-item>
                        <el-menu-item index="2-6">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                运动健将
                            </router-link>                             
                        </el-menu-item>
                        <el-menu-item index="2-7">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                良工巧匠
                            </router-link>                             
                        </el-menu-item>
                        <el-menu-item index="2-8">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                妙手厨神
                            </router-link>                              
                        </el-menu-item>
                        <el-menu-item index="2-9">
                            <router-link to="/productList" style="color:#fff;text-decoration: none;">
                                奇妙杂货
                            </router-link>  
                        </el-menu-item>
                    </el-submenu>
                    <el-menu-item index="3">
                        <router-link to="/message" target="_blank">资讯</router-link>
                    </el-menu-item>
                </el-menu>
            </el-col>
            <!-- 搜索 -->
            <el-col :span="4">
                <input type="text" placeholder="搜索" class="header_input">
            </el-col>
            <el-col :span="2" class="header_user">
                <!-- 购物车-显示商品数量 -->
                <el-badge :value="100" :max="10" class="item">
                    <router-link to="/cart" class="cart">
                        <img src="../../img/header/cart.png">
                    </router-link> 
                </el-badge>
                <router-link to="/login" class="user">
                    <img src="../../img/header/user.png">
                </router-link>
            </el-col>
        </el-row>
  </div>
</template>

<script>
export default {
    data() {
        return {
        activeIndex: '1'
        };
    },
    methods: {
      handleSelect(key, keyPath) {

      }
    }
};
</script>

<style scoped>
/* 设置header整体位置 */
.header{
    width: 100%;
    margin-left: 8%;
    margin-bottom: 3%;
}
/* 设置li */
li{
    list-style-type: none;
}
/* 设置logo */
.header .logo img{
    width: 30%;
    margin-top: 2rem;
}
/* 导航a标签*/
.header a{
    background:none;
    text-decoration: none;
    color: #fff;
}
/* 导航a标签悬停 */
.header a:hover{
    color: #a6a;
}
/* 导航--中间部分 */
.header .el-menu-demo{
    margin-top: 2rem;
    border-bottom: none;
}
/* 导航--搜索框 */
.header .header_input{
    border-radius:1.2rem;
    width: 70%;
    height: 2.0rem;
    margin-left: 5rem;
    padding-left:1.1rem;
    margin-top: 3rem;
    border:1px solid #333;
    outline: none; 
    background: #fff url('../../img/header/sousuo.png') no-repeat 97% center;
}
/* 导航--购物车-登录 */
.header .header_user{
    margin-top: 3rem;
    margin-left: 3rem;
    display: flex;
    justify-content: space-around;
}
.header .header_user .cart img{
    width: 2.5rem;
}
.header .header_user .user img{
    width: 2.5rem;
}
</style>
