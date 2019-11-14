<template>
  <div class="box_body">
    <section>
      <div class="block">
        <el-carousel trigger="click" height="150px">
          <el-carousel-item v-for="item in 4" :key="item">
            <h3 class="small">{{ item }}</h3>
          </el-carousel-item>
        </el-carousel>
      </div>
      <nav id="nav_home">
        <el-row :gutter="20">
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
        </el-row>
        <el-row :gutter="20">
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
        </el-row>
      </nav>
      <article id="deal_on">
        <h5>
          <span>交♂易♂</span>
        </h5>
        <el-row :gutter="20">
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
        </el-row>
        <el-divider></el-divider>
        <el-row :gutter="20">
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple"></div>
          </el-col>
        </el-row>
      </article>
      <article>
        <a href="#">
          <p>
            <span>公告</span>买号么交易平台是国内首家免费游戏交易平台
          </p>
        </a>
        <a href="#">
          <p>
            <span>公告</span>买号么交易平台是国内首家免费游戏交易平台
          </p>
        </a>
        <a href="#">
          <p>
            <span>公告</span>买号么交易平台是国内首家免费游戏交易平台
          </p>
        </a>
      </article>
      <article id="deal_end">
        <h5>交♂易♂完♂成</h5>
        <figure>
          <img src />
          <figcaption>
            <h4>tiasdddddddsdasdqqqqqqqqqqqqqqqqqqqqqqqasdasddasssssssssssssssssssssssssssssssssssssssssstle</h4>
            <div>
              <p>chengjia</p>
              <p>asdasfaf</p>
              <el-button type="primary" :size="mini">详情</el-button>
            </div>
          </figcaption>
        </figure>
      </article>
    </section>
  </div>
</template>
<script>
export default {};
</script>
<style lang="scss">
.box_body {
  box-sizing: border-box;
  overflow: hidden;
}
.header {
  margin: 0;
  padding: 0;
  width: 100%;
  height: 44px;
  background: #14b9c8;
  position: absolute;
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
  }
  a {
    text-decoration: none;
    color: white;
    float: right;
    font-size: 32px;
    line-height: 44px;
  }
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
section {
  position: absolute;
  top: 44px;
  width: 100%;
  #deal_on,
  #nav_home {
    text-align: center;
    box-sizing: border-box;
    padding: 2px;
    .el-row {
      margin-bottom: 20px;
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
  }

  #deal_end {
    width: 100%;
    height: 50px;
    background: cadetblue;
    figure {
      padding: 0;
      margin: 0;
      width: 100%;
      height: 80px;
      background: red;
      display: flex;
      img {
        width: 20%;
        height: 75%;
        background: yellow;
        display: inline-block;
      }
      figcaption {
        display: inline-block;
        width: 75%;
        height: 100%;
        background: #14b9c8;
        position: relative;
        h4{
         width: 100%;
          margin: 0;
          padding: 0;
        }
        div {
          width: 100%;
          position: relative;
          button {
            position: absolute;
            right: 2px;
            top: 0;
          }
          p,h4{
          width: 100%;
          margin: 0;
          padding: 0;
        }
        }
        
      }
    }
  }
}
</style>