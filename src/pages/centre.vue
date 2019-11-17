<template>
  <div id="centre">
    <div class="app_header">
      <i href class="iconfont icon-jiantou" @click="gotoHome"></i>
      <h1>个人中心</h1>
    </div>

    <img src="https://www.maihaome.com/xinapp/images/tishi.png" alt />
    <p>您还木有登录</p>
    <p>登录后才能出售商品等操作 ^_^</p>

    <el-row>
      <el-button type="primary" class="btn" @click="gotoLogin">立即登录</el-button>
      <el-button class="btn2" @click="gotoReg">没有帐号？立即注册</el-button>
    </el-row>
  </div>
</template>
<script scoped>
export default {
  methods: {
    gotoHome() {
      this.$router.push('/home');
    },
    gotoLogin() {
      this.$router.push("/login");
    },
    gotoReg() {
      this.$router.push("/reg");
    }
  }
};
</script>
<style lang="scss">
//头部
.app_header {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 44px;
  background: #14b9c8;
  z-index: 999;
  position: none;
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
    font-size: 18px;
    color: white;
    line-height: 44px;
    text-align: center;
  }
  > .cancel {
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    right: 10px;
    font-size: 24px;
    line-height: 44px;
  }
  i {
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    left: 5px;
    font-size: 20px;
    line-height: 44px;
  }
}

//mian
#centre {
  text-align: center;
  img {
    width: 80px;
  }

  .btn {
    width: 70%;
    padding: 15px 0;
    background-color: #b4ebfa;
    border: 1px solid #b4ebfa;
    color: #333;
    font-size: 18px;
    font-weight: 500;
  }
  .btn2 {
    width: 70%;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 500;
    margin-top: 14px;
    margin-left: 0px;
  }
}
</style>