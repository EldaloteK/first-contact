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
html {
    height: 100%;
}
html,
body {
  margin: 0;
  min-height: 100%;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background: rgb(226, 217, 209);
  // background: linear-gradient(198deg, rgb(93.333% 91.373% 89.02%) 0%, rgb(93.325% 91.364% 89.011%) 6.25%, rgb(93.267% 91.304% 88.949%) 12.5%, rgb(93.109% 91.14% 88.78%) 18.75%, rgb(92.801% 90.821% 88.451%) 25%, rgb(92.289% 90.29% 87.904%) 31.25%, rgb(91.519% 89.492% 87.081%) 37.5%, rgb(90.43% 88.361% 85.913%) 43.75%, rgb(88.954% 86.826% 84.327%) 50%, rgb(87.009% 84.802% 82.231%) 56.25%, rgb(84.496% 82.181% 79.511%) 62.5%, rgb(81.288% 78.822% 76.013%) 68.75%, rgb(77.206% 74.529% 71.519%) 75%, rgb(71.988% 69.001% 65.685%) 81.25%, rgb(65.202% 61.725% 57.9%) 87.5%, rgb(56.021% 51.65% 46.808%) 93.75%, rgb(42.353% 35.686% 27.451%) 100% );
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
