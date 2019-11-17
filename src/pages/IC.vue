<template>
  <div class="IC_pages">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1 class="fls">福利社</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </header>
    <div v-for=" item in Welfare" :key="item.title">
      <div class="image">
        <img :src="item.src" class="image1" />
      </div>
      <h1>{{item.title}}</h1>
      <p>
        <span>领取状态 ：</span>
        <img src="https://www.maihaome.com/file/image/process_2.gif" class="image2" />
      </p>
      <p>
        <span>领取热度 :</span>
        <span>1163</span>
      </p>
      <p>
        <span>剩余名额 :</span>
        <span>{{item.me}}</span>
      </p>
      <p>
        <span>所需积分 :</span>
        <span>{{item.jf}}积分</span>
      </p>
    </div>
    <el-button type="primary" class="ljdh">立即兑换</el-button>
  </div>
</template>
<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      Welfare: []
    };
  },
  methods:{
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    },
  },
  async created() {
    let { id } = this.$route.query;
    let {
      data: { data: Welfare }
    } = await this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "Welfare",
        condition: "_id",
        condition_value: id
      }
    });
    this.Welfare = Welfare.map(item => {
      return item;
    });
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
  > .fls {
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

//main
.IC_pages {
  width: 100%;
  .image {
    width: 100%;
    height: 310px;
    .image1 {
      width: 100%;
      height: 100%;
    }
  }
  h1 {
    font-size: 16px;
    color: #333;
    margin-top: 10px;
    margin-left: 10px;
  }
  p {
    overflow: hidden;
    span {
      font-size: 14px;
      color: #8f8f94;
    }
  }
}
.ljdh{
  width: 100%;
}
</style>