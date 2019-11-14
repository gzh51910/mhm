<template>
<div>


<header class="header1">
     <a href class="el-icon-arrow-left"></a>
    <h1>艾尔之光</h1>
   <a href class="iconfont icon-liebiao"></a>
   
  </header>
 
<section>
 
  <el-tabs type="border-card" class="xiala">
    <el-tab-pane label="商品列表" class="shenping">
      
      <el-row class="inp-box">
        <el-input v-model="input" placeholder="请输入内容" class="inp"></el-input>
        <el-button type="primary" class="btn">搜索</el-button>
      </el-row>
       <!-- 下拉菜单 -->
      <div v-for="item in datalist" :key="item.id">
        <el-col :span="12" style=" margin-top: 10px;width: 60%;">
          <!-- <span class="demonstration">click 激活</span> -->
          <el-dropdown trigger="click" split-button>
            <span class="el-dropdown-link" style=" background-color: #fafafa">{{item.name}}</span>
            <el-dropdown-menu
              slot="dropdown"
              style=" background-color: #fafafa"
              >
              <el-dropdown-item v-for="(type,idx) in item.type" :key="idx">{{type}}</el-dropdown-item>
              <!-- <el-dropdown-item>担保交易</el-dropdown-item> -->
            </el-dropdown-menu>
          </el-dropdown>
        </el-col>
      </div>
        
 
<el-collapse v-model="activeName" accordion style="width: 100%;">
       <el-collapse-item title="一致性 Consistency" name="1" class="aaaa">
         <div v-for="item in datalist" :key="item.id">
        <el-col :span="12" style=" margin-top: 10px;width: 60%;">
          <!-- <span class="demonstration">click 激活</span> -->
          <el-dropdown trigger="click" split-button>
            <span class="el-dropdown-link" style=" background-color: #fafafa">{{item.name}}</span>
            <el-dropdown-menu
              slot="dropdown"
              style=" background-color: #fafafa"
              >
              <el-dropdown-item v-for="(type,idx) in item.type" :key="idx">{{type}}</el-dropdown-item>
              <!-- <el-dropdown-item>担保交易</el-dropdown-item> -->
            </el-dropdown-menu>
          </el-dropdown>
        </el-col>
      </div>
      </el-collapse-item>
</el-collapse>
    </el-tab-pane>

    
    <el-tab-pane label="交易完成">2</el-tab-pane>
    <el-tab-pane label="手游折扣">3</el-tab-pane>
  </el-tabs>
  
</section>
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
          type: ["寄售交易2", "担保交易",]
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
    // goto(id){
    //     // this.$router.push({name:'goods',params:{id}})
    //     this.$router.push({name:'goods',query:{id},params:{id}})
    // }
  }
};
</script>
<style lang="scss">

.header1 {
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
    text-align: center;
    position: absolute;
    top:0;
    left: 22%;
    font-weight: 500;

  }
  .icon-liebiao{
      text-decoration: none;
      color: white;
      float: right;
      font-size: 32px;
      line-height: 44px
  }
  .el-icon-arrow-left{
       text-decoration: none;
      color: white;
      float: letf;
      font-size: 32px;
      line-height: 44px
  }
  

}
.xiala{
  .box-card{
    border: none;
    width: 100%;

  }
  // .shou{
  //   width: 100%;
  // }
}
.el-tabs--border-card{
  box-shadow:none;
 
  .el-collapse-item__header{
  width: 100%; background: #14b9c8;
}
}




 

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
</style>