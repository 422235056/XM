// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUi from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import Axios from 'axios'
import Vuex from 'vuex'

Vue.config.productionTip = false
Vue.use(ElementUi)
Vue.prototype.$axios=Axios
//设置全局$axios的访问前缀
//Axios.defaults.baseURL='http://132.232.177.119:3000'
Axios.defaults.baseURL='http://127.0.0.1:3000'
Vue.use(Vuex)

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
