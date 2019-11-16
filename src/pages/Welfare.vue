<template>
  <div class="welfare_page">
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
      <div class="welfare_list">
        <div class="center">
          <img src="../assets/yeye.jpg" alt />
          <div class="text">
            《梦境-迷失之地》免费首充福利号
            <p class="number">剩余()个名额</p>
            <p class="need">需要()积分</p>
            <el-button type="danger">立即兑换</el-button>
          </div>
        </div>
      </div>
      <div class="welfare_list">
        <div class="center">
          <img src="../assets/yeye.jpg" alt />
          <div class="text">
            《梦境-迷失之地》免费首充福利号
            <p class="number">剩余()个名额</p>
            <p class="need">需要()积分</p>
            <el-button type="danger">立即兑换</el-button>
          </div>
        </div>
      </div>
    </div>
    <el-button-group>
      <el-button icon="el-icon-d-arrow-left">上一页</el-button>
      <el-button>
        下一页
        <i class="el-icon-d-arrow-right el-icon-d-arrow-right"></i>
      </el-button>
    </el-button-group>
    <div class="Welfare_footer">
      <div class="Welfare_footer_text">
        关于福利社：买号么向所有用户派发真金白银充值的首充号，一般为6元首充号，您只需几个积分就能换个首充号！本频道跟手游折扣频道配合使用更优惠！
        <br />
        <el-button>点击进入手游折扣频道 > ></el-button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      input: ""
    };
  }
};
</script>

<style lang="scss">
.welfare_page {
  overflow: hidden;
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
      width: 280px;
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
      width: 110px;
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
    margin-left: 10px;
    height: 33px;
    margin-top: 10px;
    .el-button {
      width: 166px;
      height: 33px;
      margin-left: 20px;
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
}
</style>