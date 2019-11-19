<template>
  <div class="reg_page">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>账号注册</h1>
      <b href class="iconfont icon-shouye shouye" @click="gotoHome"></b>
    </header>

    <el-form class="demo-input-suffix" ref="regForm" :model="regForm" :rules="rules">
      <el-form-item prop="username">
        <el-input placeholder="会员名称，只支持英文与数字" v-model="regForm.username">
          <i slot="prefix" class="el-icon-s-custom"></i>
        </el-input>
      </el-form-item>
      <el-form-item prop="password">
        <el-input type="password" placeholder="登录密码" v-model="regForm.password">
          <i slot="prefix" class="el-icon-lock"></i>
        </el-input>
      </el-form-item>
      <el-form-item prop="email">
        <el-input placeholder="电子邮箱" v-model="regForm.email">
          <i slot="prefix" class="el-icon-message"></i>
        </el-input>
      </el-form-item>
      <el-form-item prop="relusername">
        <el-input placeholder="真实姓名" v-model="regForm.relusername">
          <i slot="prefix" class="iconfont icon-yezi yezi"></i>
        </el-input>
      </el-form-item>
    </el-form>
    <div class="three">
      <div class="QQ" @click="submitForm">
        <i slot="prefx" class="el-icon-arrow-right"></i>
        <span>立即注册成为会员</span>
      </div>
      <div class="xinlang" @click="loginFrom">
        <i slot="prefx" class="el-icon-lock"></i>
        <span>已有账号，现在登录</span>
      </div>
    </div>
    <div class="reg_footer">@maihaome.com</div>
  </div>
</template>

<script>
import { mainUrl } from "../config";
export default {
  data() {
    var checkUsername = (rule, value, callback) => {
      if (!/^[\w-]+$/i.test(value)) {
        callback(new Error("用户名必须为数字、字母、_、-"));
      } else {
        callback();
      }
    };

    var password = (rule, value, callback) => {
      if (/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{8,16}$/.test(value)) {
        callback(new Error("密码长度8~16位，数字、字母、字符至少包含两种"));
      } else {
        callback();
      }
    };

    var checkEmail = (rule, value, callback) => {
      if (!/^[1-9]\d{7,10}@qq\.com$/.test(value)) {
        callback(new Error("请输入正确的邮箱格式"));
      } else {
        callback();
      }
    };

    var checkRelusername = (rule, value, callback) => {
      if (!/^[\u4e00-\u9fa5]{2,4}$/.test(value)) {
        callback(new Error("输入姓名有误，请重新输入"));
      } else {
        callback();
      }
    };

    return {
      regForm: {
        username: "",
        password: "",
        email: "",
        relname: ""
      },
      rules: {
        username: [
          {
            required: true,
            message: "请输入用户名",
            trigger: "blur"
          },
          {
            min: 2,
            max: 60,
            message: "用户名长度在 2 到 60 个字符",
            trigger: "blur"
          },
          { validator: checkUsername, trigger: "blur" }
        ],
        password: [
          {
            required: true,
            message: "请输入登陆密码",
            trigger: "blur"
          },
          { validator: password, trigger: "blur" }
        ],
        email: [
          {
            required: true,
            message: "请输入邮箱",
            trigger: "blur"
          },
          { validator: checkEmail, trigger: "blur" }
        ],
        relname: [
          {
            required: true,
            message: "请输入正确姓名",
            trigger: "blur"
          },
          { validator: checkRelusername, trigger: "blur" }
        ]
      }
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoHome() {
      this.$router.push("/home");
    },
    // 注册按钮
    submitForm() {
      // validate方法   校验所有的表单  全过才行
      this.$refs.regForm.validate(async valid => {
        if (valid) {
          let { username, password, email, relname } = this.regForm;
          // 校验成功发起请求

          //检测是否已注册
          let {
            data: { data: jc }
          } = await this.$axios.get(mainUrl + "/goods", {
            params: {
              gather: "user",
              condition: "username",
              condition_value: username
            }
          });

          if (jc.length > 0) {
            this.$message({
              message: "该用户已注册",
              type: "warning"
            });
          } else {
            let { data: reg } = await this.$axios.post(mainUrl + "/reg", {
              username,
              password,
              email,
              relname
            });
            if (reg.status === 1) {
              this.$router.replace("/LgReg");
            }
          }
        } else {
          console.log("error submit!!");
          return false;
        }
      });
    },
    // 有账号跳转登录页面按钮
    loginFrom() {
      this.$router.push({ name: "login" });
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

//main
.reg_page {
  overflow: hidden;
  .demo-input-suffix {
    margin-top: 30px;
    .el-input {
      width: 80%;
      display: inline-block;
      line-height: 50px;
      margin: 0px 10%;
      background-color: #f2f2f2;
      input {
        background-color: #f2f2f2;
        height: 50px;
        border: 1px solid #a9a9a9;
      }
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
    .el-icon-message {
      color: black;
    }
    .yezi {
      color: black;
      font-size: 22px;
    }
  }
  .three {
    margin-left: 10%;
    width: 80%;
    margin-top: 40px;
    .QQ {
      background-color: #14b9c8;
      width: 100%;
      display: inline-block;
      height: 50px;
      line-height: 50px;
      margin-top: 5px;
      border-radius: 5px;
      position: relative;
      .el-icon-arrow-right {
        background-color: #158c97;
        width: 50px;
        height: 50px;
        text-align: center;
        float: left;
        line-height: 50px;
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
      background-color: #2980b9;
      width: 100%;
      display: inline-block;
      height: 50px;
      line-height: 50px;
      margin-top: 20px;
      border-radius: 5px;
      position: relative;
      .el-icon-lock {
        background-color: #115e92;
        width: 50px;
        height: 50px;
        text-align: center;
        float: left;
        line-height: 50px;
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
    margin-top: 80px;
    font-weight: 900;
    color: rgba(0, 0, 0, 0.308);
  }
}
</style>