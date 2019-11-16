<template>
  <div class="LgReg">
    <!-- <div class="LgReg_head">
      <i slot="prefix" class="el-icon-arrow-left"></i>
      <span>个人中心</span>
      <i slot="prefix" class="el-icon-s-home"></i>
    </div>-->
    <div class="information">
      <img src="../assets/yeye.jpg" />
      <div class="information_left">
        <i>hxhxhx</i>
        <p>￥0.00</p>
      </div>
      <i slot="prefx" class="el-icon-arrow-right"></i>
    </div>
    <div class="nav1">
      <el-col :span="12">
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#fff"
          text-color="#000"
          active-text-color="#ffd04b"
        >
          <el-submenu index="1">
            <template slot="title">
              <span>卖家控制面板</span>
            </template>
            <el-submenu index="1-1">
              <template slot="title">-我要出售商品</template>
            </el-submenu>
            <el-submenu index="1-2">
              <template slot="title">--已卖出的商品</template>
            </el-submenu>
            <el-submenu index="1-3">
              <template slot="title">-我要出售商品</template>
            </el-submenu>
            <el-submenu index="1-4">
              <template slot="title">-出售中的商品</template>
            </el-submenu>
            <el-submenu index="1-5">
              <template slot="title">-账户资金提现</template>
            </el-submenu>
            <el-submenu index="1-6">
              <template slot="title">-账户提现记录</template>
            </el-submenu>
            <el-submenu index="1-7">
              <template slot="title">-提现账户设置</template>
            </el-submenu>
            <el-submenu index="1-8">
              <template slot="title">-账户资金变动记录</template>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-col>
      <el-col :span="10">
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#fff"
          text-color="#000"
          active-text-color="#ffd04b"
        >
          <el-submenu index="1">
            <template slot="title">
              <span>买家控制面板</span>
            </template>
            <el-submenu index="1-1">
              <template slot="title">-我购买的商品</template>
            </el-submenu>
            <el-submenu index="1-2">
              <template slot="title">--收货角色管理</template>
            </el-submenu>
            <el-submenu index="1-3">
              <template slot="title">-账户余额充值</template>
            </el-submenu>
            <el-submenu index="1-4">
              <template slot="title">-余额充值记录</template>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-col>
    </div>
    <div class="nav2">
      <div class="nav2-1">
        <span>新消息通知</span>
        <i class="el-icon-arrow-right"></i>
      </div>
      <el-col :span="12">
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#fff"
          text-color="#000"
          active-text-color="#ffd04b"
        >
          <el-submenu index="1">
            <template slot="title">
              <span>用户资料管理</span>
            </template>
            <el-submenu index="1-1">
              <template slot="title">-姓名资料修改</template>
            </el-submenu>
            <el-submenu index="1-2">
              <template slot="title">--登录密码修改</template>
            </el-submenu>
            <el-submenu index="1-3">
              <template slot="title">-支付密码修改</template>
            </el-submenu>
            <el-submenu index="1-4">
              <template slot="title">-微信通知绑定</template>
            </el-submenu>
            <el-submenu index="1-5">
              <template slot="title">-QQ与微博绑定</template>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-col>
      <el-col :span="10">
        <el-menu
          default-active="2"
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          background-color="#fff"
          text-color="#000"
          active-text-color="#ffd04b"
        >
          <el-submenu index="1">
            <template slot="title">
              <span>用户安全认证</span>
            </template>
            <el-submenu index="1-1">
              <template slot="title">-实名认证</template>
            </el-submenu>
            <el-submenu index="1-2">
              <template slot="title">--邮箱认证</template>
            </el-submenu>
            <el-submenu index="1-3">
              <template slot="title">-手机认证</template>
            </el-submenu>
          </el-submenu>
        </el-menu>
      </el-col>
    </div>
    <div class="nav3" @click="Esc">
      <i class="iconfont icon-gengxin"></i>
      退出登录
    </div>
    <div class="nav4">
      <i class="iconfont icon-xiaoxi"></i>
      在线客服
    </div>
  </div>
</template>
<script>
export default {
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    Esc() {
      this.$router.push({ name: "login" });
    }
  }
};
</script>
<style lang="scss">
.LgReg {
  overflow: hidden;
  background-color: #f2f2f2;
  .information {
    width: 100%;
    height: 62px;
    margin-top: 40px;
    background-color: #fff;
    img {
      width: 42px;
      height: 42px;
      margin: 10px;
      float: left;
    }
    .information_left {
      width: 295px;
      float: left;
      margin: 10px;
      i {
        font-size: 14px;
        color: black;
      }
      p {
        height: 40%;
        color: red;
        margin: 0;
        padding: 0;
      }
    }
    .el-icon-arrow-right {
      text-align: center;
      font-size: 20px;
      line-height: 62px;
    }
  }
  .nav1 {
    margin-top: 20px;
    content: "";
    overflow: hidden;
    display: block;
    .el-col {
      width: 100%;
      border: 1px solid #f2f2f2;
    }
  }
  .nav2 {
    margin-top: 20px;
    .nav2-1 {
      background-color: #fff;
      border: 1px solid #f2f2f2;
      height: 60px;
      span {
        text-align: center;
        line-height: 60px;
        margin-left: 20px;
        font-size: 14px;
      }
      .el-icon-arrow-right {
        margin-left: 290px;
        font-size: 10px;
      }
    }
    .el-col {
      width: 100%;
      border: 1px solid #f2f2f2;
    }
  }
  .nav3 {
    width: 100%;
    background-color: #fff;
    height: 40px;
    color: red;
    text-align: center;
    margin-top: 130px;
    line-height: 40px;
  }
  .nav4 {
    width: 100%;
    background-color: #fff;
    height: 40px;
    color: black;
    text-align: center;
    margin-top: 10px;
    line-height: 40px;
  }
}
</style>