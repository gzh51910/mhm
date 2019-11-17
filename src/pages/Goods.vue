<template>
  <main id="goods_main">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>商品详情</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </header>

    <section id="goods_body" v-for="item in goods" :key="item._id">
      <article class="goods_title">
        <strong>{{item.title}}</strong>
      </article>
      <article class="goods_info">
        人气：
        <span>62</span>&nbsp;&nbsp;销量：
        <span>600</span>&nbsp;&nbsp;评价：
        <span>2</span>
      </article>
      <article class="goods_img">
        <img :src="item.src" alt />
      </article>
      <article class="goods_message">
        <p>
          商品价格：
          <strong>￥</strong>
          <strong>{{item.price}}</strong>
        </p>
        <p>
          剩余库存：
          <span>{{item.inventory}}</span>
        </p>
        <p>
          商品货号：
          <span>1230811</span>
        </p>
        <p class="goods_sort">
          所在分类：
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item >{{item.region}}</el-breadcrumb-item>
          </el-breadcrumb>
        </p>
      </article>
      <article class="goods_user">
        <p>
          出售者ID：
          <span>40404</span>
        </p>
        <p>
          店铺等级：
          <i>vip店铺</i>
        </p>
        <p>
          交易模式：
          <span>寄售交易，可快速发货</span>
        </p>
        <p>
          累计成交：
          <span>1702</span>
        </p>
      </article>
      <el-tabs type="border-card" id="goods_card">
        <el-tab-pane label="商品详情">商品详情</el-tab-pane>
        <el-tab-pane label="评价详情">评价详情</el-tab-pane>
        <el-tab-pane label="交易记录">交易记录</el-tab-pane>
      </el-tabs>
    </section>
    <footer id="goods_buy">
      <el-button type="danger" @click="gotoCart">立即购买这个商品</el-button>
    </footer>
  </main>
</template>

<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      goods: {}
    };
  },
  methods: {
    gotoCart(){
      let {_id,theme} = this.$route.query;
      this.$router.push(`/balance?theme=${theme}&id=${_id}`);
    },
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    },
    async renderer() {
      let { _id,theme } = this.$route.query;
      // window.console.log(_id);
      let {
        data: { data: goods }
      } = await this.$axios.get(mainUrl + `/goods`, {
        params: {
          gather: theme,
          condition: "_id",
          condition_value: _id
        }
      });
      this.goods = goods.map(item => {
        return item;
      });
    }
  },
  created() {
    this.renderer();
  }
};
</script>
<style lang="scss"  scoped>
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
#goods_main {
  width: 100%;
  height: 100%;
  position: relative;
  overflow: hidden;
  background: #fafafa;
  #goods_body {
    height: 83%;
    overflow: auto;
    position: relative;
    article {
      padding: 5px;
      border-bottom: 1px dashed rgb(224, 224, 224);
      font-size: 14px;
    }
    .goods_info {
      font-size: 12px;
    }
    .goods_message {
      p:nth-of-type(1) {
        strong {
          color: red;
        }
      }
    }
    .goods_user {
      color: #8f8f94;
    }
    .goods_img {
      width: 100%;
      height: 50%;
      padding: 0;
      img{
        width: 100%;
        height: 100%;
      }
    }
    p {
      width: 100%;
    }
    .goods_sort {
      display: flex;
      align-items: center;
    }
    .el-tabs__nav {
      display: flex;
      width: 100%;
      justify-content: center;
      border-radius: 5px;
      background: none;
      .el-tabs__item {
        width: 30%;
        text-align: center;
      }
      .el-tabs {
        box-shadow: none;
      }
      .el-tabs__content {
        background: white !important;
      }
    }
  }

  #goods_buy {
    width: 100%;
    background: #fafafa;
    opacity: 1;
    height: 10%;
    display: flex;
    justify-content: center;
    align-items: center;
    box-sizing: border-box;
    padding: 10px;
    z-index: 99995;
    position: relative;
    button {
      width: 100%;
    }
  }
}
</style>