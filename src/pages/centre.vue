<template>
<div id="centre">
 
    <img src="https://www.maihaome.com/xinapp/images/tishi.png" alt="">
    <p>您还木有登录</p>
    <p>登录后才能出售商品等操作 ^_^</p>
  
    <el-row>
      <el-button type="primary" class="btn">立即登录</el-button>
      <el-button class="btn2">没有帐号？立即注册</el-button>      
    </el-row>

</div>
    
</template>
<script scoped>
export default {
    
}
</script>
<style lang="scss">
#centre{
  padding: 50px 0;
  text-align: center;
  img{
    width: 80px;
  }
  
  .btn{
    width: 70%;
    padding: 15px 0;
    background-color: #b4ebfa;
    border: 1px solid #b4ebfa;
    color: #333;
    font-size: 18px;
    font-weight: 500;
  }
  .btn2{
     width: 70%;
     padding: 15px 0;
     font-size: 18px;
    font-weight: 500;
    margin-top: 14px; 
    margin-left: 0px; 
  }
}

</style>