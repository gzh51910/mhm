<template>
  <div id="app">

    <main>
      <router-view />
    </main>
  </div>
</template>

<script>
import {mapMutations} from 'vuex';

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
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
