<template>
  <div class="IC_pages">
    <div class="image">
      <img src="../assets/yeye.jpg" class="image1" />
    </div>
    <h1>黄鑫</h1>
    <p>
      <span>领取状态 ：</span>
      <img src="https://www.maihaome.com/file/image/process_2.gif" class="image2" />
    </p>
    <p>
      <span>领取热度 :</span>
      <span></span>
    </p>
    <p>
      <span>剩余名额 :</span>
      <span></span>
    </p>
    <p>
      <span>所需积分 :</span>
      <span></span>
    </p>
  </div>
</template>
<script>
// import { mainUrl } from "../config.json";
export default {
  //   data() {
  //     return {
  //       Welfare: []
  //     };
  //   },
  //   async created() {
  //     let {
  //       data: { data: Welfare }
  //     } = this.$axios.get(mainUrl + "/goods/id", {
  //       params: {
  //         gather: "Welfare"
  //       }
  //     });
  //     this.Welfare = Welfare.map(item.id);
  //   }
};
</script>
<style lang="scss">
.IC_pages {
  width: 100%;
  .image {
    width: 100%;
    height: 310px;
    .image1 {
      width: 100%;
      height: 100%;
    }
  }
  h1 {
    font-size: 16px;
    color: #333;
    margin-top: 10px;
    margin-left: 10px;
  }
  p {
    overflow: hidden;
    span {
      font-size: 14px;
      color: #8f8f94;
    }
  }
}
</style>