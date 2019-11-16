<template>
  <div id="app">
    <header class="app_header">
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
import { mainUrl } from "./config.json";
export default {
  mainUrl:mainUrl,
  name: "app",
  data() {
    return {};
  },
  components: {},
  computed: {},
  methods: {}
};
</script>

<style lang="scss">
html,
body {
  width: 100%;
  height: 100%;
}
#app {
  display: flex;
  overflow: hidden;
  height: 100%;
  flex-direction: column;

  > .app_header {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 44px;
    background: #14b9c8;
    z-index: 999;
    position:none;
    //   text-align: center;
    > img {
      margin-top: 8px;
      width: 75px;
      height: 29px;
      float: left;
      margin-left: 10px;
    }
    > h1 {
      margin: 0;
      padding: 0;
      height: 44px;
      box-sizing: border-box;
      float: left;
      font-size: 18px;
      color: white;
      line-height: 44px;
      margin-left: 44px;
    }
    > a {
      text-decoration: none;
      color: white;
      float: right;
      font-size: 32px;
      line-height: 44px;
      &:nth-of-type(1) {
        margin-right: 10px;
      }
    }
  }
  > main {
    overflow: hidden;
    width: 100%;
    height: 100%;
  }
}
</style>
