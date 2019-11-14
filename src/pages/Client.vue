<template>
    <el-container id="client_body">
  <el-header>Header</el-header>
  <el-main>Main</el-main>
  <el-footer>Footer</el-footer>
</el-container>

</template>
<script>
export default {
    data(){
        return{
            goodslist:[
            {
                title:"【已封】娜薇黄昏黎明九件套（左五+镜子+翅膀+眼罩+碎片）会员店铺快速发货",
                hot:964,

            }
        ]
        }
        
    }
}
</script>
<style lang="scss">
#client_body{


  .el-header, .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  
  .el-aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }
  
  .el-main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
    line-height: 160px;
  }
  
  body > .el-container {
    margin-bottom: 40px;
  }
  
  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }
  
  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
  }
</style>