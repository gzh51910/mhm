<template>
  <div class="LgReg">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>账号中心</h1>
      <b href class="iconfont icon-kefu" @click="gotoLogin"></b>
    </header>
    <!-- <div class="LgReg_head">
      <i slot="prefix" class="el-icon-arrow-left"></i>
      <span>个人中心</span>
      <i slot="prefix" class="el-icon-s-home"></i>
    </div>-->
    <div class="information">
      <img src="../assets/yeye.jpg" />
      <div class="information_left">
        <i>用户名</i>
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

    <el-button type="text" @click="open">
      <i class="iconfont icon-gengxin"></i>
      退出登录
    </el-button>

    <div class="nav4">
      <i class="iconfont icon-xiaoxi"></i>
      在线客服
    </div>
  </div>
</template>
<script>
// import { mainUrl } from "../config";
export default {
  // data() {
  //   return {
  //     username: []
  //   };
  // },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/login");
    },
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    open() {
      this.$store.commit("logout");
      if (this.$route.meta.requiresAuth) {
        this.$router.push({
          name: "login",
          query: {
            redirectUrl: this.$route.fullPath
          }
        });
      }
    }
    // open() {
    //   this.$confirm("亲亲！确定要离开伦家吗？？？", "提示", {
    //     confirmButtonText: "确定",
    //     cancelButtonText: "取消",
    //     type: "warning"
    //   })
    //     .then(() => {
    //       this.$message({
    //         type: "success",
    //         message: "大爷下次记得来玩哟~!"
    //       });
    //       this.$router.push({ name: "login" });
    //     })
    //     .catch(() => {
    //       this.$message({
    //         type: "info",
    //         message: "妲己继续陪你玩~！"
    //       });
    //     });
    // }
  },
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
    font-size: 18px;
    color: white;
    line-height: 44px;
    text-align: center;
  }
  > b {
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    right: 5px;
    font-size: 32px;
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

//头部
.app_header {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 44px;
  background: #14b9c8;
  z-index: 999;
  position: none;
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
    font-size: 18px;
    color: white;
    line-height: 44px;
    text-align: center;
  }
  > b {
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    right: 5px;
    font-size: 32px;
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

//main
.LgReg {
  overflow: auto;
  height: 100%;
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
      width: 70%;
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
      position: absolute;
      right: 4%;
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
  .el-button {
    width: 100%;
    background-color: #fff;
    height: 40px;
    color: red;
    text-align: center;
    margin-top: 40px;
    line-height: 15px;
    font-size: 16px;
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