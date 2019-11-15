import Vue from 'vue';

import VueRouter from 'vue-router'

Vue.use(VueRouter);

import Home from '../pages/Home.vue'
import Login from '../pages/Login.vue'
import Reg from '../pages/Reg.vue'
import Client from '../pages/Client.vue'
import Phone from '../pages/Phone.vue'
import ELSWORD_list from '../pages/ELSWORD_list.vue'
import Goods from '../pages/Goods.vue'
import centre from '../pages/centre'


let router = new VueRouter({
    routes: [{
            name: 'home',
            path: '/home',
            component: Home
        },
        {
            name: 'login',
            path: '/login',
            component: Login
        },
        {
            name: 'reg',
            path: '/reg',
            component: Reg
        },
        {
            name: 'client',
            path: '/client',
            component: Client
        },
        {
            name: 'ELSWORD_list',
            path: '/ELSWORD_list',
            component: ELSWORD_list
        },
        {
            name: 'phone',
            path: '/phone',
            component: Phone
        },
        {
            name: "goods",
            path: '/goods',
            component: Goods
        },
        {
            name: 'centre',
            path: '/centre',
            component: centre
        },
        {
            path: '/',
            component: Home
        }
    ]
});

export default router;