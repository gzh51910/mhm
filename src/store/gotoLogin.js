export default {
    gotoLogin() {
        Vue.prototype.$gotoLogin = function (){
            this.$router.push("/centre");
        }
    }
}