<template>
  <div id="app">
    <main>
      <router-view />
    </main>
  </div>
</template>

<script>

// import {mapMutations} from 'vuex';
import { mainUrl } from "./config.json";
export default {
  mainUrl: mainUrl,
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
  main {
    overflow: hidden;
    width: 100%;
    height: 100%;
  }
}
</style>
