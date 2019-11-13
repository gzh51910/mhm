<template>

<div class="box_body">
  <header class="header">
    <img src="../img/mhmlogo.png" alt />
    <h1>MHM游戏交易</h1>
    <a href class="iconfont icon-liebiao"></a>
    <a href class="iconfont icon-sousuo"></a>
  </header>
  <section>
    <div class="block">
    <el-carousel trigger="click" height="150px">
      <el-carousel-item v-for="item in 4" :key="item">
        <h3 class="small">{{ item }}</h3>
      </el-carousel-item>
    </el-carousel>
  </div>
  <nav id="home_nav">
  <el-row :gutter="20">
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
</el-row>
<el-row :gutter="20">
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
  <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
</el-row>
</nav>
  </section>
  </div>
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
 .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
   .el-row {
    margin-bottom: 20px;
    &:last-child {
      margin-bottom: 0;
    }
  }
  #home_nav{
    background:red;
    display: flex;
    
    .el-col {
    border-radius: 4px;
  }
  .bg-purple-dark {
    background: #99a9bf;
  }
  .bg-purple {
    background: #d3dce6;
  }
  .bg-purple-light {
    background: #e5e9f2;
  }
  .grid-content {
    border-radius: 4px;
    min-height: 36px;
  }
  .row-bg {
    padding: 10px 0;
    background-color: #f9fafc;
  }
  }
  
</style>