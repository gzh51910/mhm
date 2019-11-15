import Vue from 'vue'
import App from './App.vue'

import axios from 'axios';

// 使用ElementUI
Vue.use(ElementUI);

import store from './store'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(ElementUI);
Vue.config.productionTip = false


Vue.prototype.$axios = axios;
new Vue({
    router,
    store,
    render: h => h(App),
}).$mount('#app')