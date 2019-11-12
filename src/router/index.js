import Vue from 'vue';
// 1. 引入VueRouter
import VueRouter from 'vue-router'

// 2. 使用（安装）vue-router
Vue.use(VueRouter)




const router = new VueRouter({
    routes: []
});

//全军路由守卫
router.beforeEach((to, from, next) => {
    window.console.log(to, from, next);
})


export default router;