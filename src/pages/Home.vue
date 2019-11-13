<template>
  <header class="header">
    <img src="../img/mhmlogo.png" alt />
    <h1>MHM游戏交易</h1>
    <a href class="iconfont icon-liebiao"></a>
    <a href class="iconfont icon-sousuo"></a>
  </header>
</template>
<script>
export default {};
</script>
<style lang="scss">
.header {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 44px;
  background: #14b9c8;
  //   text-align: center;
  img {
    margin-top: 8px;
    width: 75px;
    height: 29px;
    float: left;
  }
  h1 {
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
  a{
      text-decoration: none;
      color: white;
      float: right;
      font-size: 32px;
      line-height: 44px
  }
}
</style>