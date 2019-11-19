<template>
  <section id="contain">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>购物结算</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </header>

    <main id="center">
      <figure v-for="item in Cart" :key="item.title">
        <img :src="item.src" alt />
        <figcaption>
          <p class="cart_title">{{item.title}}</p>
          <el-breadcrumb separator-class="el-icon-arrow-right" class="cart_site">
            <el-breadcrumb-item :to="{ path: '/' }">游戏名</el-breadcrumb-item>
            <el-breadcrumb-item>游戏大区</el-breadcrumb-item>
            <el-breadcrumb-item>服务器</el-breadcrumb-item>
          </el-breadcrumb>
          <div>
            <el-input-number
              v-model="num"
              @change="handleChange"
              :min="num_min"
              label="描述文字"
              class="minMax"
              size="mini"
            ></el-input-number>
          </div>
        </figcaption>
        <p class="cart_kc">
          库存剩
          <span>100</span>件
        </p>
      </figure>
      <article class="role">
        <p>
          收获类型：
          <span>装备与游戏币回收</span>
        </p>
        <p>
          所在区服：
          <span>四川一区</span>
        </p>
        <p>
          角色名称：
          <span>哪个旮沓</span>
        </p>
        <el-button type="primary" plain>更换收货角色</el-button>
      </article>
      <article class="cart_price">
        <p v-for="item in Cart" :key="item.title">
          <span>商品单价</span>
          <span class="unit_price">￥{{item.price}}</span>
        </p>
        <div>
          <el-select v-model="value" placeholder="请选择" class="cart_select">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
          </el-select>
          <span class="addition_price">￥0.00</span>
        </div>
        <el-checkbox-group v-model="checkedCities" class="cart_other">
          <el-checkbox
            v-for="city in cities"
            :label="city"
            :key="city"
            class="cart_other_select"
          >{{city}}</el-checkbox>
        </el-checkbox-group>
      </article>
      <!-- 总价 -->
      <div class="total_price">
        <p>
          应付总价
          <span>
            ￥
            <b>{{(totalPrice * num).toFixed(2)}}</b>
          </span>
        </p>
      </div>
      <div class="remark">
        <p>备注信息(选填)</p>
      </div>
    </main>
    <footer id="bottom">
      <el-button type="danger" plain class="confirm_buy">确定下单购买</el-button>
    </footer>
  </section>
</template>

<script>
const cityOptions = [
  "10分钟快速接单",
  "30分钟快速接",
  "保险"
];
import { mainUrl } from "../config";
export default {
  data() {
    return {
      num: "1",
      num_min:1,
      checkedCities: ["无"],
      cities: cityOptions,
      options: [
        {
          value: "none",
          label: "无附加费"
        },
        {
          value: "have",
          label: "有附加费"
        }
      ],
      value: "",
      Cart: [],
      totalPrice:""
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    },
    handleChange() {}
  },
  async created() {
    let { theme, id } = this.$route.query;
    let {
      data: { data: Cart }
    } = await this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: theme,
        condition: "_id",
        condition_value: id
      }
    });
    this.Cart = Cart.map(item => {
      return item;
    });
    this.totalPrice = parseInt(Cart[0].price)
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

// main
#contain {
  display: flex;
  flex-direction: column; /*列  垂直方向*/
  height: 100%; /*全屏效果  该元素及其父元素及html、body height：100%*/
  #top {
    height: 200px;
    background: red;
  }
  #center {
    flex: 1;
    padding: 10px 16px;
    background: white;
    box-sizing: border-box;
    figure {
      margin-block-start: 0;
      margin-block-end: 0;
      margin-inline-start: 0;
      margin-inline-end: 0;
      position: relative;
      margin-bottom: 20px;
      content: "";
      display: block;
      overflow: hidden;
      img {
        float: left;
        width: 80px;
        height: 80px;
      }
      figcaption {
        float: left;
        margin-left: 20px;
        font-size: 14px;
        content: "";
        display: block;
        overflow: hidden;
        .cart_title {
          margin-block-start: 0;
          margin-block-end: 0;
          margin-bottom: 6px;
        }
        .cart_site {
          margin-bottom: 6px;
        }
        [data-v-51b97be8] {
          content: "";
          display: block;
          overflow: hidden;
          .minMax {
            position: absolute;
            bottom: 0;
          }
        }
      }
      .cart_kc {
        position: absolute;
        right: 0px;
        bottom: 0px;
        margin-block-start: 0;
        margin-block-end: 0;
        font-size: 14px;
        .balance_kucun {
          width: 10px;
        }
      }
    }
    .role {
      font-size: 14px;
      border-top: 1px solid #cccccc;
      color: #666;
      p {
        margin-block-start: 0.5em;
        margin-block-end: 0.5em;
      }
      .el-button {
        width: 100%;
        background: #b4ebfa;
        height: 30px;
        padding: 0px;
      }
    }
    .cart_price {
      border-top: 1px solid #cccccc;
      margin-top: 30px;
      font-size: 14px;
      color: #666;
      .unit_price {
        float: right;
        color: #e74c3c;
      }
      .cart_select {
        width: 150px;
        height: 30px;
      }
      .addition_price {
        float: right;
        color: #e74c3c;
      }
      .cart_other {
        color: #333;
        margin-top: 30px;
        .cart_other_select {
          margin-bottom: 10px;
          display: block;
        }
      }
    }
    .total_price {
      font-weight: bold;
      font-size: 16px;
      color: #333;
      span {
        float: right;
      }
    }
    .remark {
      font-size: 14px;
      color: #ccc;
      border-top: 1px solid #ccc;
      border-bottom: 1px solid #ccc;
    }
  }
  #bottom {
    height: 60px;
  }
  .confirm_buy {
    width: 100%;
    height: 56px;
    background: #dd524d;
    color: white;
  }
}
</style>