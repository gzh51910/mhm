<template>
  <div class="welfare_page">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>福利社</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </header>

    <div class="integral">
      <span>您当前的积分:</span>
      <span>31点</span>
    </div>
    <div class="SE">
      <el-input v-model="input" placeholder="请输入内容"></el-input>
      <el-button type="primary">搜索</el-button>
    </div>
    <el-row>
      <el-button type="success">福利列表</el-button>
      <el-button>我领取的</el-button>
      <el-button>我的站内信</el-button>
    </el-row>
    <div class="main">
      <div class="welfare_list" :key="item.id" v-for="item in Welfare">
        <div class="center">
          <img :src="item.src" alt />
          <div class="text">
            <p>{{item.title}}</p>
            <p class="number">剩余 {{item.me}} 个名额</p>
            <p class="need">需要 {{item.jf}} 点积分</p>
            <el-button type="danger" @click="ic(item._id)">立即兑换</el-button>
          </div>
        </div>
      </div>
    </div>
    <el-button-group>
      <el-button icon="el-icon-d-arrow-left welfare_btn" >上一页</el-button>
      <el-button>
        下一页
        <i class="el-icon-d-arrow-right el-icon-d-arrow-right welfare_btn" ></i>
      </el-button>
    </el-button-group>
    <div class="Welfare_footer">
      <div class="Welfare_footer_text">
        关于福利社：买号么向所有用户派发真金白银充值的首充号，一般为6元首充号，您只需几个积分就能换个首充号！本频道跟手游折扣频道配合使用更优惠！
        <br />
        <el-button @click="gotoSyzk">点击进入手游折扣频道 > ></el-button>
      </div>
    </div>
    <div class="Welfare_footer_logo">@maihaome.com</div>
  </div>
</template>

<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      input: "",
      Welfare: []
    };
  },
  methods: {
    gotoSyzk(){
      this.$router.push("/syzk");
    },
    ic(_id) {
      this.$router.push(`/IC?id=${_id}`);
    },
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    }
  },
  async created() {
    let {
      data: { data: Welfare }
    } = await this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "Welfare"
      }
    });
    this.Welfare = Welfare.map(item => {
      return item;
    });
    console.log(this.Welfare);
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
.welfare_page {
  width: 100%;
  height: 100%;
  overflow: auto;
  .integral {
    width: 100%;
    font-size: 14px;
    margin-top: 0;
    color: #8f8f94;
    background: #fafad2;
    padding: 10px;
    margin-bottom: 0px;
    span {
      margin-left: 5px;
    }
  }
  .SE {
    width: 100%;
    height: 60px;
    .el-input {
      width: 70%;
      height: 35px;
      float: left;
      margin-left: 5px;
      margin-top: 10px;
    }
    button {
      float: left;
      margin-left: 5px;
      margin-top: 14px;
      height: 34px;
      background-color: #14b9c8;
      font-size: 14px;
      width: 26%;
    }
  }
  .el-row {
    width: 100%;
    height: 55px;
    background-color: #fff;
    .el-button {
      height: 33px;
      font-size: 14px;
      padding: 6px 12px;
      margin-top: 11px;
      margin-left: 5px;
      text-align: center；;
    }
  }
  .main {
    width: 100%;
    .welfare_list {
      height: 97px;
      background: #fff;
      border-top: 1px solid #e6e6e6;
      border-bottom: 1px solid #e6e6e6;
      position: relative;
      margin-top: 10px;
      .center {
        height: 63px;
        width: 390px;
        margin-left: 10px;
        img {
          width: 80px;
          height: 60px;
          margin-right: 10px;
          margin-top: 10px;
          float: left;
        }
        .text {
          float: left;
          font-family: "Microsoft YaHei", SimSun, sans-serif;
          font-size: 17px;
          line-height: 21px;
          height: 60px;
          color: #000;
          margin-top: 10px;
          p {
            font-size: 14px;
            margin-top: 0;
            margin-bottom: 0;
            color: #8f8f94;
          }
        }
      }
      .el-button {
        width: 82px;
        height: 33px;
        position: absolute;
        right: 20px;
        bottom: 10px;
        color: #fff;
        border: 1px solid #dd524d;
        background-color: #dd524d;
        padding: 6px 12px;
      }
    }
  }
  .el-button-group {
    width: 100%;
    height: 33px;
    margin-top: 10px;
    .el-button {
      width: 40%;
      height: 33px;
      margin-left: 10%;
      padding: 5px 14px;
      border: 1px solid #ddd;
      border-radius: 6px;
      background-color: #fff;
    }
  }
  .Welfare_footer {
    background-color: #fff;
    font-size: 14px;
    margin-top: 0;
    margin-bottom: 10px;
    color: #8f8f94;
    margin-top: 10px;
    overflow: hidden;
    .Welfare_footer_text {
      margin: 10px;
    }
    .el-button {
      color: #fff;
      border: 1px solid #dd524d;
      background-color: #dd524d;
    }
  }
  .Welfare_footer_logo {
    font-size: 13px;
    text-align: center;
    margin-top: 50px;
    color: rgba(0, 0, 0, 0.644);
  }
}
</style>