import Vue from 'vue'
import App from './App.vue'

import axios from 'axios';


import store from './store'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

// import gotoLogin from './store'
// Vue.use(gotoLogin);
Vue.use(ElementUI);
Vue.config.productionTip = false


Vue.prototype.$axios = axios;
new Vue({
    router,
    store,
    render: h => h(App),
}).$mount('#app')