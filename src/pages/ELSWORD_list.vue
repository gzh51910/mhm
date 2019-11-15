<template>
  <div id="list_div">
    <header class="header1">
      <a href class="el-icon-arrow-left"></a>
      <h1>艾尔之光</h1>
      <a href class="iconfont icon-liebiao"></a>
    </header>
    <main id="list_body">
    <section id="list_main">
      <el-tabs type="border-card" class="xiala">
        <el-tab-pane label="商品列表" class="shenping">
          <el-row class="inp-box">
            <el-input v-model="input" placeholder="请输入内容" class="inp"></el-input>
            <el-button type="primary" class="btn">搜索</el-button>
          </el-row>
          <!-- 下拉菜单 -->
          <div v-for="item in datalist" :key="item.id">
            <el-col :span="12" style=" margin-top: 10px;width: 60%;margin-bottom: 10px;">
              <!-- <span class="demonstration">click 激活</span> -->
              <el-dropdown trigger="click" split-button>
                <span class="el-dropdown-link" style=" background-color: #fafafa">{{item.name}}</span>
                <el-dropdown-menu slot="dropdown" style=" background-color: #fafafa">
                  <el-dropdown-item v-for="(type,idx) in item.type" :key="idx">{{type}}</el-dropdown-item>
                  <!-- <el-dropdown-item>担保交易</el-dropdown-item> -->
                </el-dropdown-menu>
              </el-dropdown>
            </el-col>
          </div>

          <el-collapse v-model="activeName" accordion>
            
            <el-collapse-item title=" 艾尔之光商品区服筛选" name="1" class="aaaa">
              <div v-for="item in datalist" :key="item.id">
                <el-col :span="12" style=" margin-top: 10px;width: 60%;">
                  <!-- <span class="demonstration">click 激活</span> -->
                  <el-dropdown trigger="click" split-button>
                    <span class="el-dropdown-link" style=" background-color: #fafafa">{{item.name}}</span>
                    <el-dropdown-menu slot="dropdown" style=" background-color: #fafafa">
                      <el-dropdown-item v-for="(type,idx) in item.type" :key="idx">{{type}}</el-dropdown-item>
                      <!-- <el-dropdown-item>担保交易</el-dropdown-item> -->
                    </el-dropdown-menu>
                  </el-dropdown>
                </el-col>
              </div>
            </el-collapse-item>
          </el-collapse>
          <!-- 列表 -->
          <el-row :gutter="20" style=" margin-top: 10px;display:flex" v-for="o in 2" :key="o">
            <aside class="list_goods_goto" @click="goto(1)">
            <el-col :span="6" style="width: 100px;height: 100px;">
              <img
                src="https://www.maihaome.com/file/upload/201910/08/20430977212759.jpg.thumb.jpg"
                alt
                style="width: 100px;height:100px"
              />
            </el-col>
            <el-col :span="6" class="wz">
              <h3>万家福IE汇入根本复稻城亚丁就是粗而划分与承诺的核查个人与</h3>
              <p class="pwz">
                艾尔之光 / 华中华北区 / 盖亚
                <b>
                  <img src="https://www.maihaome.com/newapp/img/ji.png" alt />
                  <img src="https://www.maihaome.com/newapp/img/5.png" alt />
                </b>
              </p>
              <p class="pwz1">
                剩余库存 100
                <b>48.00 / 件</b>
              </p>
            </el-col>
            </aside>
          </el-row>

          <!-- 分页 -->
          <el-button-group class="fen">
            <el-button type="primary">上一页</el-button>
            <el-button type="primary">下一页</el-button>
          </el-button-group>
        </el-tab-pane>

        <el-tab-pane label="交易完成" class="jiaoyi">
          <!-- 卡片 -->
          <el-card class="box-card">
            <div slot="header" class="clearfix">
              <el-row :gutter="10">
                <el-col :xs="8" :sm="6" :md="4" :lg="3" :xl="1">
                  <img
                    src="https://www.maihaome.com/file/upload/201911/09/23454971516047.png.thumb.png"
                    alt
                    style=" width:30px;hegiht:30px"
                  />
                </el-col>
                <el-col :xs="4" :sm="6" :md="8" :lg="9" :xl="11" id="list_wz">
                  <p class="jiayiwz">1234567834567812345678987654321`1234567899</p>
                  <p class="jiayiwz">123456789</p>
                </el-col>
              </el-row>
            </div>
            <div v-for="o in 3" :key="o" class="text item">{{'成交数量 ' + o }}</div>
            <div class="card_bottom" @click="goto(1)">
              <i class="el-icon-s-promotion"></i>
              我也要购买这个商品
            </div>
          </el-card>
        </el-tab-pane>
        <el-tab-pane label="手游折扣" class="shouyou">
          <!-- 搜索 -->
          <el-row class="inp-box">
            <el-input v-model="input" placeholder="请输入内容" class="inp"></el-input>
            <el-button type="primary" class="btn">搜索</el-button>
          </el-row>
          <el-row class="bton">
            <el-button>全部游戏</el-button>
            <el-button>首充送号</el-button>
          </el-row>
          <el-card class="box-card">
            <el-row :gutter="15">
              <el-col :xs="8" :sm="6" :md="4" :lg="3" :xl="1">
                <img
                  src="https://www.maihaome.com/file/upload/201909/09/13101629487156.png"
                  style="width: 80px;"
                />
              </el-col>
              <el-col :xs="4" :sm="6" :md="8" :lg="9" :xl="11" class="card-wz" style="padding-left:20px">
                <h4>国战天下</h4>
                <p>
                  首充折扣：
                  <span>
                    1折
                    <i>起</i>
                  </span>
                </p>
                <p>
                  首充折扣：
                  <span>
                    1折
                    <i>起</i>
                  </span>
                </p>
                <p class="oa-contact-email mui-h5">游戏标签：休闲 卡牌 冒险</p>
              </el-col>
            </el-row>
            <div class="card-bottom" @click="goto(1)">
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
          <footer class="shuoyuo_foot">@maihaome.com</footer>
        </el-tab-pane>
      </el-tabs>
    </section>
    </main>
  </div>
</template>
<script>
export default {
  data() {
    return {
      datalist: [
        {
          id: 1,
          name: "全部交易类型",
          type: ["寄售交易1", "担保交易"]
        },
        {
          id: 2,
          name: "全部店铺类型",
          type: ["寄售交易2", "担保交易"]
        },
        {
          id: 3,
          name: "全部店铺类型",
          type: ["寄售交易3", "担保交易"]
        }
      ]
    };
  },

  methods: {
    goto(id){
        // this.$router.push({name:'goods',params:{id}})
        this.$router.push({name:'goods',query:{id},params:{id}})
    }
  }
};
</script>
<style lang="scss" scoped>

#list_div{

#list_body{
  width: 100%;
  height: 92%;
  overflow: auto;
  position: fixed;
  top:44px;
  section{
    position: none;
  }


}
.list_goods_goto{
  display: flex;
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

  .el-collapse-item__header {
    width: 100%;
    background: #14b9c8;
  }
  .el-collapse{
    border-top: none;
    border-bottom: none;
  }
  .wz {
    // word-wrap: break-word;
    height: 100px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: normal;
    width: 90%;
    margin-left: 10px;

    h3 {
      font-size: 14px;
      margin: 4px;
    }
    p {
      border-bottom: 1px solid #ccc;
      margin: 0;
      height: 28px;
      line-height: 28px;
    }
    .pwz {
      font-size: 12px;
      color: #8f8f94;

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
  }
}
#list_main{
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

  .clearfix {
    // @media only screen and (max-width: 767px)

    .el-col-xs-8 {
      width: 12.33333%;
    }
    p {
      margin: 0;
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
  }
  .el-card__body {
    padding: 0;
  }
}
// 
.el-tabs__nav-scroll {
    overflow: hidden;
    position: fixed;
    top: 45px;
    z-index: 100;
    background:rgb(245,247, 250);
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
  .shuoyuo_foot{
    padding: 45px 0;
    text-align: center;
  }
}
#sub_nav {
  .el-col {
    width: 25%;
   padding: 6px 12px;
    // font-size: 14px;
    .grid-content {
      color:#fff;
      background: #4cd964;
      padding: 6px 12px;
      text-align: center;

    }
  }
}

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
    
</style>