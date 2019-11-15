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
import Card from '../pages/Card.vue'
import centre from '../pages/centre'
import Mine from '../pages/Mine.vue'
import Balance from '../pages/Balance.vue'
import LgReg from '../pages/LgReg.vue'

let router = new VueRouter({
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
            name: 'reg',
            path: '/reg',
            component: Reg
        },
        {
            name: 'client',
            path: '/client',
            component: Client,
            value:"Client"
        },
        {
            name: 'phone',
            path: '/phone',
            component: Client,
            value:"phone"
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
            component: LgReg
        },
        {
            path: '/',
            component: Home
        }
    ]
});

export default router;