<template>
  <div class="projects-container">
    <ForestAnimal />
    <div class="projects-navigation">
      <div class="creative-category"></div>
      <div class="scientific-category"></div>
      <div class="development-category"></div>
    </div>
  </div>
</template>

<script>
import ForestAnimal from "../components/forest-animal.vue";

export default {
  name: "Projects",
  components: {
    ForestAnimal,
  },
};
</script>

<style lang="scss" scoped>
* {
  box-sizing: border-box;
}

.projects-container {
  .projects-navigation {
    display: flex;
  }
}
</style>
