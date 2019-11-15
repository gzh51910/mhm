<template>
  <el-container id="client_body">
    <el-header>
      <el-input v-model="input" placeholder="输入游戏名称关键词筛选" class="search_input"></el-input>
      <el-button type="primary">搜索</el-button>
    </el-header>
    <el-main>
      <figure id="client_main" v-for="item in Client" :key="item.title" @click="goto">
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
        <el-button>《上一页</el-button>
        <el-button>下一页》</el-button>
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
      input: "",
      Client: [],
      ClientNum: []
    };
  },
  methods: {
    goto() {
      this.$router.push({ name: "ELSWORD_list", params: {} });
    }
  },

  async created() {
    let {
      data: { data: Client }
    } = await this.$axios.get(mainUrl + "/goods", {
      params: {
        gather: "Client",
        page: 1,
        size: 20
      }
    });
    this.Client = Client.map(item => {
      return item;
    });
    // console.log(this.Client);

    //页数
    let {
      data: { data: ClientNum }
    } = await this.$axios.get(mainUrl + "/goods/num", {
      params: {
        count: "Client"
      }
    });
    this.ClientNum = ClientNum;

    //注册
    // let {
    //   data: { data: user }
    // } = await this.$axios.get("http://localhost:1910/goods", {
    //   params: {
    //     gather: "user",
    //     condition:"username",
    //     condition_value:"中山王力宏"
    //   }
    // });
    // console.log(user);
  }
};
</script>
<style lang="scss" scoped>
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