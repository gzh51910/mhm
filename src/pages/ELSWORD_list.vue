<template>
     <el-tabs type="border-card">
  <el-tab-pane label="商品列表">1
        <el-row class="inp-box">
                <el-input v-model="input" placeholder="请输入内容" class="inp"></el-input> 
                <el-button type="primary" class="btn">搜索</el-button>
        </el-row>
    <div v-for="item in datalist" :key="item.id">
        <el-col :span="3" style=" margin-top: 10px;width: 40%;">
            <!-- <span class="demonstration">click 激活</span> -->
            <el-dropdown trigger="click" split-button>
            <span class="el-dropdown-link" style=" background-color: #fafafa">
                {{item.name}}
            </span> 
            <el-dropdown-menu slot="dropdown" style=" background-color: #fafafa">
                <el-dropdown-item>寄售交易</el-dropdown-item>
                <!-- <el-dropdown-item>担保交易</el-dropdown-item> -->
            </el-dropdown-menu>
            </el-dropdown>
        </el-col>
        
    </div>

  </el-tab-pane>
  <el-tab-pane label="交易完成">2</el-tab-pane>
  <el-tab-pane label="手游折扣">3</el-tab-pane>
  
</el-tabs>
</template>
<script>

export default {
    
}
</script>
<style lang="scss">

</style>