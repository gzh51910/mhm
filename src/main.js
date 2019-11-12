import Vue from 'vue'
import App from './App.vue'

import axios from 'axios';


import store from './store'
import router from './router'

Vue.config.productionTip = false


Vue.prototype.$axios = axios;
new Vue({
    router,
    store,
    render: h => h(App),
}).$mount('#app')