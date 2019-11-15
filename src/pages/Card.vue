<template>
   <el-card class="box-card">
  <div slot="header" class="clearfix">
    <span>购物车</span>
    <el-button style="float: right; padding: 3px 0" type="text">立即♂交易</el-button>
  </div>
  <div v-for="o in 7" :key="o" class="text item">
      <figure>
          <img src="" alt="">
          <figcaption>
              <p>title</p>
              <p>price</p>
              {{'列表内容 ' + o }}
          </figcaption>
      </figure>
    
  </div>
</el-card>
</template>

<script>
export default {
    
}
</script>
<style lang="scss"  scoped>
.box-card{
    box-sizing: border-box;
    height: 100%;
    width: 100%;
    overflow: hidden;
     .text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }
  .clearfix:after {
    clear: both
  }
  .el-card__header{

  }
  .el-card__body{
      background: red;
      overflow: auto;
      padding: 0;
  }
}
</style>