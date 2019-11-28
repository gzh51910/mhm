import Vue from 'vue'

// 1. 引入Vuex
import Vuex from 'vuex';

import cart from '../store/cart'
import common from '../store/commont'
// 2. 使用(安装)Vuex
Vue.use(Vuex);

// 3. 实例化一个Store（一个应用只运行有一个Store）
let store = new Vuex.Store({
    modules: {
        cart,
        common
    }
})

// 4. 把store导出并注入Vue实例
export default store;