<template>
  <div>
    <!-- <div v-for="item in datalist" :key="item.title">
      <img :src="item.src" alt />
    </div> -->
  </div>
</template>
<script>
export default {
  data() {
    return {
      datalist: []
    };
  },
  methods: {},
  async created() {
    let {
      data: { data }
    } = await this.$axios.get("http://localhost:1910/goods", {
      params: {
        gather: "Client"
      }
    });
    this.datalist = data.map(item => {
      return item;
    });
    console.log(this.datalist);
  }
};
</script>
<style lang="scss">
</style>