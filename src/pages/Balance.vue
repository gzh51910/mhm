<template>
 <div id="contain">
    <div id="top">你好</div>
    <div id="center">你好</div>
    <div id="bottom">你也好</div>
</div>
</template>

<script>
export default {};
</script>

<style lang="scss"  scoped>
*{
            margin: 0;
            padding: 0;
        }
        body,html{
            height: 100%;
        }
        #contain{
            display: flex;
            flex-direction: column;/*列  垂直方向*/
            height: 100%;/*全屏效果  该元素及其父元素及html、body height：100%*/
        }
        #top{
           height: 200px;
            background: red;
        }
        #center {
            flex: 1;
            background: blue;
        }
        #bottom{
            height: 100px;
            background: green;
        }
</style>