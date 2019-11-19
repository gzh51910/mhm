import Vue from 'vue';

import VueRouter from 'vue-router'

import { mainUrl } from '../config'

Vue.use(VueRouter);

import Home from '../pages/Home.vue'
import Login from '../pages/Login.vue'
import Reg from '../pages/Reg.vue'
import Client from '../pages/Client.vue'
import ELSWORD_list from '../pages/ELSWORD_list.vue'
import Goods from '../pages/Goods.vue'
import Card from '../pages/Card.vue'
import centre from '../pages/centre'
import Mine from '../pages/Mine.vue'
import Balance from '../pages/Balance.vue'
import LgReg from '../pages/LgReg.vue'
import Welfare from '../pages/Welfare.vue'
import syzk from '../pages/syzk.vue'
import IC from '../pages/IC.vue'

let router = new VueRouter({
    mode:'history',
    routes: [{
            name: 'home',
            path: '/home',
            component: Home
        }, {
            name: 'mine',
            path: '/mine',
            component: Mine
        },
        {
            name: 'login',
            path: '/login',
            component: Login
        },
        {
            name: 'IC',
            path: '/IC',
            component: IC
        },
        {
            name: 'reg',
            path: '/reg',
            component: Reg
        },
        {
            name: 'client',
            path: '/client',
            component: Client,
        },
        {
            name: 'phone',
            path: '/phone',
            component: Client,
        }, {
            name: 'welfare',
            path: '/welfare',
            component: Welfare
        },
        {
            name: 'ELSWORD_list',
            path: '/ELSWORD_list',
            component: ELSWORD_list
        },
        {
            name: "goods",
            path: '/goods',
            component: Goods
        },
        {
            name: 'card',
            path: '/card',
            component: Card
        },
        {
            name: 'centre',
            path: '/centre',
            component: centre
        }, {
            name: 'balance',
            path: '/balance',
            component: Balance
        }, {
            name: 'LgReg',
            path: '/LgReg',
            component: LgReg,
            meta: { requiresAuth: true }
        },{
            name: 'syzk',
            path: '/syzk',
            component: syzk
        },
        {
            path: '/',
            component: Home
        }
    ]
});

router.beforeEach((to, from, next) => {next()
    if(to.meta.requiresAuth){
        // let Authorization = localStorage.getItem('Authorization');
        let $store = router.app.$store
        let Authorization = $store.state.common.user.Authorization;
        if(Authorization){
            
            router.app.$axios.get(mainUrl+'/verify',{
                headers:{
                    Authorization
                }
            }).then(({data})=>{
                if(data.status === 0){
                    $store.commit('logout')
                    next({
                        path:'/centre',
                        query:{
                            redirectUrl:to.fullPath
                        }
                    })
                }
            })
        }else{
            // router.push('/login')
            next({
                path:'/centre',
                query:{
                    redirectUrl:to.fullPath
                }
            })
        }
    }
    next()
});

export default router;