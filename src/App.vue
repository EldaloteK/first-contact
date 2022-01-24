<template>
  <Introduction />
</template>

<script>
import Introduction from "./views/introduction.vue";

export default {
  name: "App",
  components: {
    Introduction,
  },
};
</script>

<style lang="scss">
html,
body {
  margin: 0;
  height: 100%;
  background-color: #f2ede7;
}
#app {
  box-sizing: border-box;
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
