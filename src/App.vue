<template>
  <Introduction />
</template>

<script>
import Introduction from './components/introduction.vue'

export default {
  name: 'App',
  components: {
    Introduction
  }
}
</script>

<style>
body{
  margin: 0;
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
