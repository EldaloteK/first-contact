<template>
  <Introduction />
</template>

<script>
import Introduction from "./views/introduction.vue";

export default {
  name: "App",
  mounted() {
    document.title = "First Contact";
  },
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
  font-family: auto;
  font-style: italic;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #5a1000;
}
</style>
