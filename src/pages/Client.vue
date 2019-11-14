<template>
  <el-container id="client_body">
    <el-header>
        <el-input v-model="input" placeholder="输入游戏名称关键词筛选"></el-input>
        <el-button type="primary">搜索</el-button>
    </el-header>
    <el-main>
      <figure id="client_main">
        <aside>
          <img src alt />
        </aside>
        <figcaption>
          <p>title</p>
          <el-row>
            <el-button class="client_label" type="primary">thumbs</el-button>
            <el-button class="client_label" type="primary">thumbs</el-button>
            <el-button class="client_label" type="primary">thumbs</el-button>
          </el-row>
        </figcaption>
      </figure>
    </el-main>
    <el-footer>
        <el-button>《上一页</el-button>
        <el-button>下一页》</el-button>
    </el-footer>
  </el-container>
</template>
<script>
export default {
  data() {
    return {
         input: '',
      datalist: []
    };
  },
  methods: {},
  async created() {
    let {
      data: { data }
    } = await this.$axios.get("http://10.3.136.52:1910/goods", {
      params: {
        gather: "Client"
      }
    });
    this.datalist = data.map(item => {
      return item;
    });
    // console.log(this.datalist);
  }
};
</script>
<style lang="scss">
#client_body {
  #client_main {
    display: flex;
    height: 100px;
    align-items: center;
    aside {
      width: 100px;
      height: 100%;
      background: red;
      border-radius: 10px;
      overflow: hidden;
      img {
        width: 100%;
      }
    }
    figcaption {
      background: #58bc58;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-items: center;
      width: 73%;
      .el-row {
        width: 100%;
        display: flex;
        flex-wrap: wrap;
        .el-button {
          width: 30%;
          padding: 7px 0;
          margin: 5px 0 0 3%;
        }
      }
    }
  }
  .el-header,
  .el-footer {
    background-color: #b3c0d1;
    color: #333;
    text-align: center;
    line-height: 60px;
  }
  .el-header{
      display: flex;
      align-items: center;
      .el-input{
          width: 78%;
      }
      .el-button{
          padding:6px 12px;
          margin-left: 2%;
          height: 40px;
          width: 20%;
      }
  }

  .el-aside {
    background-color: #d3dce6;
    color: #333;
    text-align: center;
    line-height: 200px;
  }

  .el-main {
    background-color: #e9eef3;
    color: #333;
    text-align: center;
    height: 100%;
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