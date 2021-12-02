<template>
  <div class="introduction">
    <img class="placeholder-bg" src="../assets/treePlaceholderBg.png" />
  </div>
</template>

<script>
export default {
  name: "Introduction",
  props: {
    msg: String
  }
};
</script>

<style>
* {
  box-sizing: border-box;
}

.introduction {
  display: flex;
  flex-direction: column;
}

.placeholder-bg {
  height: -webkit-fill-available;
  width: -webkit-fill-available;
}
</style>
