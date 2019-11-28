<template>
  <section class="box_body">
    <header class="app_header">
      <img src="../img/mhmlogo.png" alt />
      <h1>MHM游戏交易</h1>
      <b href class="iconfont icon-leb liebiao" @click="gotoLogin"></b>
      <a href class="iconfont icon-sousuo"></a>
    </header>
    <section id="Home_body">
      <div class="block">
        <el-carousel trigger="click" height="150px">
          <el-carousel-item v-for="item in slideshow" :key="item._id">
            <h3 class="small">
              <img :src="item.src" alt />
            </h3>
          </el-carousel-item>
        </el-carousel>
      </div>
      <nav id="nav_home">
        <el-row :gutter="20" class="el-row-one">
          <el-col :span="6" v-for="item in fn_nav" :key="item.title" style="padding:0 5px">
            <div class="grid-content bg-purple" @click="goto(item.theme)">
              <img :src="item.src" alt />
              <p class="fn_title">{{item.title}}</p>
            </div>
          </el-col>
        </el-row>
      </nav>
      <article id="deal_on">
        <h5>
          <span>
            <i class="iconfont icon-jiantou_you"></i>交易推介
          </span>
        </h5>
        <el-row :gutter="20">
          <el-col :span="6" v-for="item in Game_nav" :key="item.title" style="padding:0 5px">
            <div class="grid-content bg-purple" @click="gotolist(item.theme)">
              <img :src="item.src" alt />
              <p class="Game_title">{{item.title}}</p>
            </div>
          </el-col>
        </el-row>
      </article>
      <article class="notice">
        <a href="#" v-for="item in notice" :key="item.title">
          <p>
            <span>公告</span>
            {{item.title}}
          </p>
        </a>
      </article>
      <article id="deal_end">
        <h5 class="deal_finish">
          <i class="iconfont icon-jiantou_you"></i>交易完成
        </h5>
        <figure v-for="item in HomeList" :key="item.title" @click="goto('goods',item._id)">
          <img :src="item.src" alt />
          <figcaption>
            <h4>{{item.title}}</h4>
            <div>
              <span>
                成交单价：
                <i class="deal_price">{{item.price}}</i>
              </span>
              <span>
                成交数量：
                <i>{{item.quantity}}</i>
              </span>
              <p>{{item.timer}}</p>
              <div class="details">详情</div>
            </div>
          </figcaption>
        </figure>
      </article>
    </section>
  </section>
</template>
<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      slideshow: [],
      fn_nav: [],
      Game_nav: [],
      notice: [],
      HomeList: []
    };
  },
  methods: {
    gotoLogin() {
      this.$router.push("/LgReg");
    },
    goto(link, _id) {
      if (link == "skin") {
        this.$router.push(`/ELSWORD_list?value=${link}&theme=Skin`);
      } else if (link == "syzk") {
        this.$router.push("/syzk");
      } else if (link == "mine") {
        this.$router.push("/LgReg");
      } else if (link == "goods") {
        this.$router.push({ name: "goods", query: { _id, theme: "HomeList" } });
      } else if (link == "walfare") {
        this.$router.push("/welfare");
      } else {
        this.$router.push(`/${link}?value=${link}`);
      }
    },
    gotolist(link) {
      this.$router.push(`/ELSWORD_list?value=${link}&theme=${link}`);
    }
  },
  async mounted() {
    
    Promise.all([
      this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "slideshow"
      }
     }),
    this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "fn_nav"
      }
    }), 
     this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "Game_nav"
      }
    }), 
     this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "notice"
      }
    }), this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "HomeList"
      }
    })]).then(values=> {
      this.slideshow =values[0].data.data.map(item => {
        return item;
      });
      this.fn_nav =values[1].data.data.map(item => {
        return item;
      });
      this.Game_nav =values[2].data.data.map(item => {
        return item;
      });
      this.notice = values[3].data.data.map(item => {
        return item;
      });
      this.HomeList = values[4].data.data.map(item => {
        return item;
      });
    });
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
  position: fixed;
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
    position: absolute;
    text-align: center;
    width: 100%;
    font-size: 18px;
    color: white;
    line-height: 44px;
  }
  a,
  b {
    text-decoration: none;
    color: white;
    float: right;
    font-size: 32px;
    line-height: 44px;
  }
  a {
    margin-right: 40px;
    font-size: 28px;
  }
}

//身体
#Home_body {
  position: relative;
  top: 44px;
}
.box_body {
  box-sizing: border-box;
  overflow: auto;
}
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 150px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}
.small {
  img {
    width: 100%;
    height: 100%;
  }
}
section {
  height: 100%;
  width: 100%;
  // overflow: hidden;
  #deal_on,
  #nav_home {
    text-align: center;
    box-sizing: border-box;
    padding: 2px;
    width: 100%;
    overflow: hidden;
    .el-row {
      margin-bottom: 20px;
      padding: 0 10px;
      justify-content: space-around;
      &:last-child {
        margin-bottom: 0;
      }
    }
    .el-col {
      border-radius: 4px;
    }
    .bg-purple-dark {
      background: #99a9bf;
    }
    .bg-purple {
      background: #d3dce6;
    }
    .bg-purple-light {
      background: #e5e9f2;
    }
    .grid-content {
      border-radius: 4px;
      min-height: 36px;
    }
    .row-bg {
      padding: 10px 0;
      background-color: #f9fafc;
    }
    .el-row-one {
      .el-col {
        &:nth-of-type(1) .grid-content {
          background: #8289d9;
          color: white;
        }
        &:nth-of-type(2) .grid-content {
          background: #5cace5;
          color: white;
        }
        &:nth-of-type(3) .grid-content {
          background: #26bfbf;
          color: white;
        }
        &:nth-of-type(4) .grid-content {
          background: #1dbf6e;
          color: white;
        }
        &:nth-of-type(5) .grid-content,
        &:nth-of-type(6) .grid-content,
        &:nth-of-type(7) .grid-content,
        &:nth-of-type(8) .grid-content {
          background: #b4ebfa;
          color: #14b9c8;
        }
      }
    }
  }
  #nav_home {
    background: #fff;
    .grid-content {
      margin-top: 16px;
      margin-bottom: 16px;
      padding: 6px 0 5px 0;
      img {
        width: 25px;
        height: 25px;
      }
      .fn_title {
        margin-block-start: 0;
        margin-block-end: 0;
        font-size: 16px;
      }
    }
  }
  #deal_on {
    background: #fff;
    h5 {
      background: #f2f2f2;
      margin-block-start: 0;
      margin-block-end: 0;
      padding: 15px 12px;
      color: #333;
      text-align: left;
      i {
        margin-right: 5px;
      }
    }
    .grid-content {
      background: #fff;
      margin: 14px 0;
      img {
        width: 56.25px;
        height: 56.25px;
      }
      .Game_title {
        width: 100%;
        height: 19px;
        margin-block-start: 0;
        margin-block-end: 0;
        font-size: 14px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        margin-right: 0px;
        text-align: center;
      }
    }
  }
  #deal_end {
    width: 100%;
    height: 50px;
    background: #f2f2f2;
    .deal_finish {
      margin-block-start: 0;
      margin-block-end: 0;
      padding: 15px 12px;
      color: #333;
      i {
        margin-right: 5px;
      }
    }
    figure {
      border-top: 1px solid #f2f2f2;
      padding: 0;
      margin: 0;
      width: 100%;
      height: 80px;
      display: flex;
      background: #fff;
      padding: 10px 0;
      img {
        width: 20%;
        height: 75%;
        display: inline-block;
      }
      figcaption {
        display: inline-block;
        width: 75%;
        height: 100%;
        position: relative;
        color: #8f8f94;
        h4 {
          width: 100%;
          margin: 0;
          padding: 0;
          font-size: 14px;
          color: #333;
        }
        div {
          width: 100%;
          position: relative;
          span,
          p {
            display: inline-block;
            margin-top: 5px;
            font-size: 12px;
          }
          span {
            i {
              font-style: normal;
            }
            .deal_price {
              color: #dd524d;
            }
          }
          span:nth-of-type(1) {
            margin-right: 10px;
          }
          .details {
            background: #14b9c8;
            border: 0px;
            width: 48px;
            height: 25px;
            position: absolute;
            right: 2px;
            top: 0;
            text-align: center;
            color: white;
            font-size: 14px;
            line-height: 25px;
          }
        }
      }
    }
  }
  .notice {
    a {
      text-decoration: none;
      font-size: 14px;
      color: #333;
      p {
        margin: 0;
        margin-top: 2px;
        background: #fff;
        padding: 10px 6px;
        overflow: hidden;
        white-space: nowrap;
        text-overflow: ellipsis;
        span {
          display: inline-block;
          width: 40px;
          height: 20px;
          border-radius: 5px;
          border: 1px solid #dd524d;
          text-align: center;
          color: #dd524d;
        }
      }
    }
  }
}
</style>