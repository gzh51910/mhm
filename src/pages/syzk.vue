<template>
  <div id="list_div">
    <div class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>手游折扣</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </div>
    <header class="header1">
      <a href class="el-icon-arrow-left"></a>
      <h1>艾尔之光</h1>
      <a href class="iconfont icon-liebiao"></a>
    </header>
    <main id="list_body">
      <section id="list_main">
        <el-tabs type="border-card" class="xiala">
          <div label="手游折扣" class="shouyou">
            <!-- 搜索 -->
            <el-row class="inp-box">
              <el-input v-model="input" placeholder="请输入内容" class="inp"></el-input>
              <el-button type="primary" class="btn">搜索</el-button>
            </el-row>
            <el-row class="bton">
              <el-button>全部游戏</el-button>
              <el-button>首充送号</el-button>
            </el-row>
            <el-card class="box-card" v-for="item in ELSWORD_list_syzk" :key="item.id">
              <el-row :gutter="15">
                <el-col :xs="8" :sm="6" :md="4" :lg="3" :xl="1">
                  <img :src="item.src" style="width: 80px;" />
                </el-col>
                <el-col
                  :xs="4"
                  :sm="6"
                  :md="8"
                  :lg="9"
                  :xl="11"
                  class="card-wz"
                  style="padding-left:20px"
                >
                  <h4>{{item.title}}</h4>
                  <p>
                    首充折扣：
                    <span>
                      {{item.first}}
                      <i>起</i>
                    </span>
                  </p>
                  <p>
                    续充折扣：
                    <span>
                      {{item.continue}}
                      <i>起</i>
                    </span>
                  </p>
                  <p class="oa-contact-email mui-h5">{{item.type}}</p>
                </el-col>
              </el-row>
              <div class="card-bottom">
                <p class="bottom-wz">查看游戏与折扣商品详情</p>
              </div>
            </el-card>

            <div class="shouyou-bottom">
              <p class="btn">查看更多手游折扣</p>
            </div>

            <el-row :gutter="20" id="sub_nav">
              <el-col :span="8">
                <div class="grid-content bg-purple">二次元</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">休闲</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">模拟</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">moba</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">动作</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">卡牌</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">角色</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">策略</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">射击</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">逃生</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">回合</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">体育</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">吃鸡</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">格斗</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">养成</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">女生</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">男生</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">西游</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">三国</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">魔幻</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">仙侠</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">历史</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">武侠</div>
              </el-col>
              <el-col :span="8">
                <div class="grid-content bg-purple">日风</div>
              </el-col>
            </el-row>
            <!-- <footer class="shuoyuo_foot">@maihaome.com</footer> -->
          </div>
          <footer class="shuoyuo_foot">@maihaome.com</footer>
        </el-tabs>
      </section>
    </main>
  </div>
</template>
<script>
import { mainUrl } from "../config.json";

export default {
  data() {
    return {
      page: 1,
      ELSWORD_list: [],
      Yeshu_num: [],
      ELSWORD_list_jywc: [],
      ELSWORD_list_syzk: []
    };
  },
  computed: {
    input() {
      return "";
    },
    activeName() {
      return "";
    },
    imtem() {
      return "";
    }
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    },
    Img(_id) {
      this.$router.push({ name: "goods", query: { _id } });
    },
    next() {
      if (this.page < Math.ceil(this.Yeshu_num / 20)) {
        this.page++;
        this.renderer();
      }
    },
    page_return() {
      if (this.page > 1) {
        this.page--;
        this.renderer();
      }
    },
    async renderer() {
      // 手游折扣
      let {
        data: { data: ELSWORD_list_syzk }
      } = await this.$axios.get(mainUrl + "/goods", {
        params: {
          gather: "ELSWORD_list_syzk"
        }
      });

      this.ELSWORD_list_syzk = ELSWORD_list_syzk.map(item => {
        return item;
      });
    }
  },
  async created() {
    this.renderer()
  }
};
</script>
<style lang="scss" scoped>

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

//main
#list_div {
  #list_body {
    width: 100%;
    height: 92%;
    overflow: auto;
    position: fixed;
    top: 44px;
    section {
      position: none;
    }

    .header1 {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 44px;
      background: #14b9c8;
      z-index: 10;
      //   text-align: center;
      img {
        margin-top: 8px;
        width: 75px;
        height: 29px;
        float: left;
      }
      h1 {
        margin: 0;
        padding: 0;
        height: 44px;
        box-sizing: border-box;
        float: left;
        font-size: 18px;
        color: white;
        line-height: 44px;
        margin-left: 44px;
        text-align: center;
        position: absolute;
        top: 0;
        left: 22%;
        font-weight: 500;
      }
      .icon-liebiao {
        text-decoration: none;
        color: white;
        float: right;
        font-size: 32px;
        line-height: 44px;
      }
      .el-icon-arrow-left {
        text-decoration: none;
        color: white;
        float: letf;
        font-size: 32px;
        line-height: 44px;
      }
    }
    .el-tabs--border-card {
      box-shadow: none;
      .el-collapse {
        float: left;
        width: 100%;
        /* background: #f00; */
        .ff .el-collapse-item__header {
          width: 100%;
          background: #14b9c8;
        }
      }

      .el-collapse {
        border-top: none;
        border-bottom: none;
      }
      .wz {
        // word-wrap: break-word;
        height: 100px;
        // overflow: hidden;
        text-overflow: ellipsis;
        white-space: normal;
        width: 90%;
        margin-left: 10px;
        margin-top: 10px;

        h3 {
          font-size: 14px;
          margin: 0px;
        }
        p {
          border-bottom: 1px solid #ccc;
          margin: 0;
          // height: 28px;
          // line-height: 28px;
        }
        .pwz {
          font-size: 12px;
          color: #8f8f94;
          line-height: 24px;

          b {
            float: right;
          }
        }
        .pwz1 {
          background-color: #fafafa;
          font-size: 12px;
          color: #8f8f94;
          b {
            float: right;
            color: #f00;
            font-weight: 700;
          }
        }
      }
      .fen {
        position: relative;
        left: 25%;
        margin-top: 10%;
        .fen_btn {
          padding: 12px 20px;
          border-radius: 7px;
          margin-right: 20px;
          margin-bottom: 10px;
        }
      }
    }
    #list_main {
      position: relative;
      top: 0;
    }
    #list_main .el-tabs--border-card {
      box-shadow: none;
      -webkit-box-shadow: none;
      border: none;
    }
    #list_main .el-tabs--border-card > .el-tabs__content {
      padding: 10px;
      padding-top: 45px;
    }

    // 交易
    .box-card {
      border: none;
      width: 100%;
      margin-top: 10px;

      .clearfix {
        // @media only screen and (max-width: 767px)

        .el-col-xs-8 {
          width: 12.33333%;
        }
        .el-col-xs-4 {
          width: 74.66667%;
        }
        p {
          margin: 0;
        }
        .jiayiwz {
          font-weight: 700;
          font-size: 14px;
        }
        .jiayi_wz {
          font-size: 12px;
          padding-top: 4px;
        }
        img {
          width: 34px;
          height: 34px;
        }
      }
      .card_bottom {
        text-align: center;
        background-color: #f9f9f9;
        height: 44px;
        line-height: 44px;
        border-top: 1px solid #ccc;
      }
      .text {
        padding: 5px 20px;
        color: #8f8f94;
        font-size: 14px;
      }
      .el-card__body {
        padding: 0;
      }
    }
    //
    .el-tabs__nav-scroll {
      overflow: hidden;
      position: fixed;
      top: 44px;
      z-index: 100;
      background: rgb(245, 247, 250);
      width: 100%;
    }

    // 手游折扣
    .shouyou {
      .bton {
        margin-top: 20px;
      }
      .el-card.is-always-shadow {
        margin-top: 10px;
        box-sizing: border-box;
      }
      .el-card {
        padding: 11px 0 0 11px;
      }
      .box-card {
        .el-col-xs-8 {
          width: 24%;
        }

        .el-col-xs-4 {
          width: 60%;
          font-size: 14px;

          h4 {
            margin: 0;
            font-size: 16px;
          }
          p {
            margin: 5px;
            font-size: 12px;
            span {
              clear: #f00;
            }
            i {
              font-style: normal;
            }
          }
        }
      }
      .card-bottom {
        width: 90%;

        border-top: 1px dashed #ccc;
        margin-top: 10px;
      }
      .bottom-wz {
        margin-left: 15px;
        width: 85%;
        motion: 0 auto;
        border: 1px solid #ccc;
        text-align: center;
        height: 33px;
        line-height: 33px;
      }

      .shouyou-bottom {
        width: 80%;
        background-color: #14b9c8;
        border: 1px solid #14b9c8;
        // margin-top: 20px;
        margin: 10%;
        // padding: 20px;
        text-align: center;
        border-radius: 8px;
      }
    }
    #sub_nav {
      .el-col {
        width: 25%;
        padding: 6px 12px;
        font-size: 14px;
        .grid-content {
          color: #fff;
          background: #4cd964;
          padding: 6px 10px;
          text-align: center;
        }
      }
    }
    .shuoyuo_foot {
      padding: 45px 0;
      text-align: center;
    }
    // .el-row{
    //   padding-top: 10px;
    //   padding-bottom: 10px;
    //   .pwz1{
    //     margin-bottom: 10px;
    //   }
    // }
    // 搜索
    .inp-box {
      .inp {
        width: 70%;
      }
      .btn {
        margin-left: 10px;
      }
      // .el-dropdown-link{
      //    border:1px solid #c8c7cc!important;
      //    background-color: #fafafa
      // }
    }
  }
}
</style>