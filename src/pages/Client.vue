<template>
  <el-container id="client_body">
    <header class="app_header">
      <i href class="iconfont icon-jiantou" @click="goBack"></i>
      <h1>{{topTitle}}</h1>
      <b href class="iconfont icon-leb" @click="gotoLogin"></b>
    </header>
    <el-header>
      <el-input v-model="input" placeholder="输入游戏名称关键词筛选" class="search_input"></el-input>
      <el-button type="primary">搜索</el-button>
    </el-header>
    <el-main>
      <figure id="client_main" v-for="item in Client" :key="item.title" @click="goto(item.theme)">
        <aside>
          <img :src="item.src" alt />
        </aside>
        <figcaption>
          <p>
            <b>{{item.title}}</b>
          </p>
          <el-row>
            <el-button
              class="client_label"
              type="primary"
              v-for="item in item.thumbs"
              :key="item"
            >{{item}}</el-button>
          </el-row>
        </figcaption>
      </figure>
      <el-footer style="height:none;">
        <el-button v-model="page" @click="page_return">《上一页</el-button>
        <el-button v-model="page" @click="next">下一页》</el-button>
        <p>
          共
          <span id="client_num">{{ClientNum}}</span> 条 /
          <span id="client_pege">{{Math.ceil(ClientNum/20)}}</span> 页
        </p>
      </el-footer>
      <aside id="client_footer_aside">
        <span>@maihaome.com</span>
      </aside>
    </el-main>
  </el-container>
</template>
<script>
import { mainUrl } from "../config.json";
export default {
  data() {
    return {
      page: 1,
      input: "",
      Client: [],
      ClientNum: [],
      topTitle: ""
    };
  },
  methods: {
    goBack() {
      this.$router.go(-1);
    },
    gotoLogin() {
      this.$router.push("/LgReg");
    },
    goto(link) {
      this.$router.push(`/ELSWORD_list?value=${link}&theme=${link}`);
    },
    next() {
      if (this.page < Math.ceil(this.ClientNum / 20)) {
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
      let { value } = this.$route.query;
      let databaseName = value.charAt(0).toUpperCase() + value.slice(1);

      let {
        data: { data: Client }
      } = await this.$axios.get(mainUrl + "/goods", {
        params: {
          gather: databaseName,
          page: this.page,
          size: 20
        }
      });
      this.Client = Client.map(item => {
        return item;
      });

      //页数
      let {
        data: { data: ClientNum }
      } = await this.$axios.get(mainUrl + "/goods/num", {
        params: {
          count: databaseName
        }
      });
      this.ClientNum = ClientNum;
    }
  },

  created() {
    this.renderer();
    let { value } = this.$route.query;
    if (value == "client") {
      this.topTitle = "端游专区";
    } else {
      this.topTitle = "手游专区";
    }
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

//身体
#client_body {
  height: none;
  height: 100%;
  overflow: auto;
  #client_main {
    display: flex;
    // height: 80px;
    align-items: center;
    padding: 10px;
    flex: 1;
    border-bottom: 1px solid rgb(242, 242, 242);
    aside {
      width: 80px;
      height: 100%;
      border-radius: 10px;
      overflow: hidden;
      img {
        width: 100%;
      }
    }
    figcaption {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-items: center;
      width: 73%;
      margin-bottom: 8px;
      p {
        margin-left: 3%;
      }
      .el-row {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        .el-button {
          background: #b4ebfa;
          color: #14b9c8;
          border: 0px;
          width: 30%;
          height: 28px;
          padding: 7px 0;
          margin: 10px 0 0 3%;
        }
      }
    }
  }
  .el-header,
  .el-footer {
    background-color: white;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  .el-header {
    display: flex;
    align-items: center;
    background: rgb(242, 242, 242);
    .el-input {
      width: 70%;
    }
    .el-button {
      padding: 6px 12px;
      margin-left: 2%;
      height: 40px;
      width: 28%;
    }
  }
  .el-footer {
    width: 100%;
    height: none;
    .el-button {
      width: 40%;
      padding: 10px 0;
    }
    p {
      padding: 0;
      margin: 0;
    }
  }
  #client_footer_aside {
    text-align: center;
    padding: 40px;
    background: rgb(242, 242, 242);
  }

  .el-aside {
    background-color: #d3dce6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }

  > .el-main {
    background-color: rgb(255, 255, 255);
    color: #333;
    text-align: center;
    padding: 0;
    overflow: auto;
    * {
      padding: 0;
      margin: 0;
    }
  }

  body > .el-container {
    margin-bottom: 40px;
  }

  .el-container:nth-child(5) .el-aside,
  .el-container:nth-child(6) .el-aside {
    line-height: 260px;
  }

  .el-container:nth-child(7) .el-aside {
    line-height: 320px;
  }
}
</style>