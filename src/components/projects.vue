<template>
  <div class="projects-container">
    <div class="projects-image"><RaccoonDesk /></div>
    <div class="projects-navigation"></div>
  </div>
</template>

<script>
import RaccoonDesk from "../components/raccoon-desk.vue";

export default {
  name: "Projects",
  components: {
    RaccoonDesk,
  },
};
</script>

<style lang="scss" scoped>
* {
  box-sizing: border-box;
}

.projects-container {
  display: flex;
  flex-direction: column;
  padding: 10px;
  .projects-image + .projects-navigation {
    margin-left: 30px;
  }
  .projects-navigation {
    background-color: #f5f0ec;
    font-family: Helvetica;
    font-style: italic;
    color: #5a1000;
    font-size: 30px;
  }
}
</style>
