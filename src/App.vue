<template>
  <div id="app">
<header class="header">
      <img src="./img/mhmlogo.png" alt />
      <h1>MHM游戏交易</h1>
      <a href class="iconfont icon-liebiao"></a>
      <a href class="iconfont icon-sousuo"></a>
    </header>
    <main>
      <router-view />
    </main>
  </div>
</template>

<script>
// import {mapMutations} from 'vuex';

export default {
  name: 'app',
  data(){
    return {

    }
  },
  components: {
    
  },
  computed:{

  },
  methods:{
    
  }
}
</script>

<style>
#app {
  
}
</style>
