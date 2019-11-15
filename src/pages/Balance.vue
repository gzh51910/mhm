<template>
  <section id="contain">
    <main id="center">
      <figure>
        <img src alt />
        <figcaption>
          <p>游戏币5000w</p>
          <el-breadcrumb separator-class="el-icon-arrow-right">
            <el-breadcrumb-item :to="{ path: '/' }">游戏名</el-breadcrumb-item>
            <el-breadcrumb-item>游戏大区</el-breadcrumb-item>
            <el-breadcrumb-item>服务器</el-breadcrumb-item>
          </el-breadcrumb>
          <div>
            <el-input-number
              v-model="num"
              @change="handleChange"
              :min="num_min"
              :max="num_max"
              label="描述文字"
            ></el-input-number>
            <p>
              库存剩
              <span class="balance_kucun">1</span>件
            </p>
          </div>
        </figcaption>
      </figure>
      <article>
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
      <article>
        <p>
          <span>商品单价</span>
          <span>￥ 80.00</span>
        </p>
        <div>
          <el-select v-model="value" placeholder="请选择">
            <el-option
              v-for="item in options"
              :key="item.value"
              :label="item.label"
              :value="item.value"
            ></el-option>
          </el-select>
          <span>￥0.00</span>
        </div>
        <el-checkbox-group v-model="checkedCities" :min="0" :max="1">
          <el-checkbox v-for="city in cities" :label="city" :key="city">{{city}}</el-checkbox>
        </el-checkbox-group>
      </article>
    </main>
    <footer id="bottom">
      <el-button type="danger" plain>确定下单购买</el-button>
    </footer>
  </section>
</template>

<script>
const cityOptions = ['10分钟快速接单（10元/次）', '30分钟快速接单(5元/次)',"无"];
export default {
    
  data() {
    return {
      num: "1",
      num_max: 6,
      num_min: 1,
      checkedCities: ['无'],
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
      value: ""
    };
  },
  methods: {
    handleChange() {}
  }
};
</script>

<style lang="scss"  scoped>
* {
  margin: 0;
  padding: 0;
}
body,
html {
  height: 100%;
}
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
    background: blue;
  }
  #bottom {
    height: 60px;
  }
}
</style>