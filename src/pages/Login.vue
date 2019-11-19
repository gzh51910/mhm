<template>
  <div class="login">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>个人中心</h1>
      <b href class="iconfont icon-shouye shouye" @click="gotoHome" ></b>
    </header>

    <el-form
      class="demo-input-suffix"
      ref="loginForm"
      :model="loginForm"
      v-model="loginForm"
      :rules="rules"
    >
      <el-form-item prop="username" :error="errorMsg">
        <el-input placeholder="用户名/Email/已认证手机" v-model="loginForm.username">
          <i slot="prefix" class="el-icon-s-custom"></i>
        </el-input>
      </el-form-item>
      <el-form-item prop="password" :error="errorMsg">
        <el-input type="password" placeholder="请填写密码" v-model="loginForm.password">
          <i slot="prefix" class="el-icon-lock"></i>
        </el-input>
      </el-form-item>
      <!-- <el-form-item>
        <el-input placeholder="点击显示验证码">
          <i slot="prefix" class="el-icon-view"></i>
        </el-input>
      </el-form-item>-->
    </el-form>
    <div class="login_login" @click="submitForm">
      <i slot="prefx" class="el-icon-arrow-right"></i>
      <span>立即登录</span>
    </div>
    <p class="none_id">
      <a @click="ToReg">还没有买号么账号吗？</a>
      <span>忘记了密码？</span>
    </p>

    <div class="three">
      <div class="QQ">
        <i class="iconfont icon-icon qq"></i>
        <span>
          <a href="https://www.maihaome.com/api/oauth/qq/connect.php">用QQ登录账号登录</a>
        </span>
      </div>
      <div class="xinlang">
        <i class="iconfont icon-web_xinlangweibo lang"></i>
        <span>
          <a href="https://www.maihaome.com/api/oauth/sina/connect.php">用新浪微博账号登录</a>
        </span>
      </div>
    </div>
    <div class="reg_footer">@maihaome.com</div>
  </div>
</template>
<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      errorMsg: "",
      loginForm: {
        username: "",
        password: "",
        mdl: true
      },
      rules: {
        username: [
          { required: true, message: "请输入用户名", trigger: "blur" },
          {
            min: 2,
            max: 12,
            message: "长度在 3 到 12 个字符",
            trigger: "blur"
          }
        ],
        password: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { min: 6, max: 20, message: "长度在 6 到 20 个字符", trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoHome(){
      this.$router.push('/home')
    },
    submitForm() {
      this.$refs.loginForm.validate(async valid => {
        if (valid) {
          //校验成功，发送ajax请求

          let { username, password } = this.loginForm;

          let result = await this.$axios.get(mainUrl + "/login", {
            params: {
              username,
              password
            }
          });

          let { data, headers } = result;
          console.log(result);

          if (data.status === 0) {
            this.errorMsg = "用户名或密码错误";
          } else {
            let user = data.data;

            user.Authorization = headers.authorization;
            this.$store.commit("login", user);
            // localStorage.setItem("Authorization", Authorization);
            let redirectUrl = this.$route.query.redirectUrl || "/LgReg";
            this.$router.replace(redirectUrl);
          }
        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
    ToReg() {
      this.$router.push({ name: "reg" });
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
  > .shouye {
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    right: 5px;
    font-size: 24px;
    line-height: 44px;
  }
  i{
    text-decoration: none;
    color: white;
    position: absolute;
    top: 0;
    left: 5px;
    font-size: 20px;
    line-height: 44px;
  }
}

//main部分
a {
  text-decoration: none;
}
.login {
  overflow: hidden;

  .demo-input-suffix {
    margin-top: 40px;
    input {
      background-color: #f2f2f2;
      border: 1px solid #a9a9a9;
      height: 50px;
    }
    .el-input {
      background-color: #f2f2f2;
      width: 80%;
      display: inline-block;
      height: 50px;
      line-height: 50px;
      margin: 0px 10%;
      input::-webkit-input-placeholder {
        color: rgba(0, 0, 0, 0.397);
      }
      input::-moz-input-placeholder {
        color: rgba(0, 0, 0, 0.466);
      }
      input::-ms-input-placeholder {
        color: rgba(0, 0, 0, 0.459);
      }
      .el-icon-s-custom {
        color: black;
      }
    }
    .el-icon-lock {
      color: black;
    }
    .el-icon-view {
      color: black;
    }
  }
  .none_id {
    color: #666;
  }
  .login_login {
    background-color: #14b9c8b4;
    width: 80%;
    display: inline-block;
    height: 50px;
    line-height: 50px;
    margin: 5% 10%;
    border-radius: 5px;
    color: white;
    text-align: center;
    position: relative;
    i{
      position: absolute;
      top: 0;
      left: 0;
    }
    .el-icon-arrow-right {
      background-color: #14b9c865;
      width: 50px;
      height: 50px;
      text-align: center;
      float: left;
      line-height: 50px;
    }
    span {
      text-align: center;
      width: 100%;
      float: left;
    }
  }
  p {
    margin-left: 10%;
    width: 80%;
    font-size: 13px;
    font-weight: 400;
    span {
      float: right;
    }
  }
  .three {
    margin-left: 10%;
    border-top: 1px solid rgb(110, 100, 100);
    width: 80%;
    a {
      text-decoration: none;
      color: white;
    }
    .QQ {
      background-color: #4099ff;
      width: 100%;
      display: inline-block;
      height: 50px;
      line-height: 50px;
      margin-top: 5%;
      border-radius: 5px;
      position: relative;
      .qq {
        background-color: #0b70e281;
        width: 50px;
        height: 50px;
        text-align: center;
        float: left;
        line-height: 50px;
        color: white;
        font-size: 20px;
        position: absolute;
        top: 0;
        left: 0;
      }
      span {
        text-align: center;
        width: 100%;
        float: left;
      }
    }
    .xinlang {
      background-color: #cc230d;
      width: 100%;
      display: inline-block;
      height: 50px;
      line-height: 50px;
      margin-top: 5%;
      border-radius: 5px;
      position: relative;
      .lang {
        background-color: #941b0b77;
        width: 50px;
        height: 50px;
        text-align: center;
        float: left;
        line-height: 50px;
        color: white;
        font-size: 20px;
        position: absolute;
        top: 0;
        left: 0;
      }
      span {
        text-align: center;
        width: 100%;
        float: left;
      }
    }
  }
  .reg_footer {
    font-size: 13px;
    text-align: center;
    margin-top: 100px;
    color: rgba(0, 0, 0, 0.644);
  }
}
</style>

