<template>
  <div class="projects-container">
    <ForestAnimal />
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
</style>
