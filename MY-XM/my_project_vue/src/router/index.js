import Vue from 'vue'
import Router from 'vue-router'
//引入自定义组件
import Home from '@/components/home/home'
import Header from '@/components/header/header'
import Footer from '@/components/footer/footer'
import Login from '@/components/login/login'
import ProductList from '@/components/productList/productList'
import Detail from '@/components/detail/detail'
import Message from '@/components/message/message'

Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',redirect:"/home"},
    {path: '/home',component: Home},
    {path: '/footer',component: Footer},
    {path: '/header',component: Header},
    {path: '/login',component: Login},
    {path: '/productList',component: ProductList},
    {path: '/productList/detail/:id',component: Detail},
    {path: '/message',component: Message}
  ]
})
