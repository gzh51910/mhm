let user = localStorage.getItem('user');

try {
    user = JSON.parse(user) || {}
} catch (err) {
    user = {}
}

export default {
    state: {
        user
    },
    mutations: {
        login(state, user) {
            state.user = user;

            localStorage.setItem('user', JSON.stringify(user))
        },
        logout(state) {
            state.user = {};
            state.Authorization = '';

            // 清除本地存储信息
            localStorage.removeItem('user');
        }
    }
}