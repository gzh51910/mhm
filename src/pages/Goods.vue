<template>
  <main id="goods_main">
    <section id="goods_body">
      <article class="goods_title">
        <strong>挫冰机（机械上将） 娜薇冰雕像钥匙（机械上将） 机械上将冰机 机械冰机 欧皇冰机 1个 一个（会员店铺快速发货）</strong>
      </article>
      <article class="goods_info">
        人气：
        <span>62</span>&nbsp;&nbsp;销量：
        <span>600</span>&nbsp;&nbsp;评价：
        <span>2</span>
      </article>
      <article class="goods_img">
        <img src alt />
      </article>
      <article class="goods_message">
        <p>
          商品价格：
          <strong>￥</strong>
          <strong>2.33</strong>
        </p>
        <p>
          剩余库存：
          <span>500</span>
        </p>
        <p>
          商品货号：
          <span>1230811</span>
        </p>
        <p class="goods_sort">
          所在分类：
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/' }">游戏</el-breadcrumb-item>
            <el-breadcrumb-item>地区</el-breadcrumb-item>
            <el-breadcrumb-item>服务器</el-breadcrumb-item>
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
      <el-button type="danger">立即购买这个商品</el-button>
    </footer>
  </main>
</template>

<script>
// import { mainUrl } from "../config.json";
export default {
  // async created() {
  //   let { id } = this.$axios.get(mainUrl + "/goods", {
  //     parem: {}
  //   });
  // }
};
</script>
<style lang="scss"  scoped>
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
    margin-bottom: 12%;
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
      background: red;
      padding: 0;
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