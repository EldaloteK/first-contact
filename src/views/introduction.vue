<template>
  <div class="introduction">
    <Navigation :class="{ 'view-not-forest': navChoice != 1 }" />
    <div class="main-view">
      <div class="main-view-left">
        <LeftNavigation @navChoice="performNavSelection" />
      </div>
      <div class="main-view-right">
        <ForestHome v-show="navChoice == 1" :move-raccoon="moveRaccoon" />
        <Projects v-show="navChoice == 2" />
        <Photography v-show="navChoice == 3" />
      </div>
    </div>
  </div>
</template>

<script>
import Navigation from "../components/navigation.vue";
import ForestHome from "../components/forest-home.vue";
import LeftNavigation from "../components/left-navigation.vue";
import Projects from "../components/projects.vue";
import Photography from "../components/photography.vue";
import { ref } from "vue";

export default {
  name: "Introduction",
  components: {
    ForestHome,
    LeftNavigation,
    Navigation,
    Photography,
    Projects,
  },
  props: {
    msg: String,
  },
  setup() {
    const navChoice = ref(1);
    const moveRaccoon = ref(false);

    function onChoiceTwo(choice) {
      navChoice.value = choice;
      moveRaccoon.value = false;
    }

    function performNavSelection(choice) {
      if (choice === 2 && navChoice.value == 1) {
        moveRaccoon.value = true;
        setTimeout(() => onChoiceTwo(choice), 800);
      } else {
        navChoice.value = choice;
      }
    }

    return {
      moveRaccoon,
      navChoice,
      performNavSelection,
    };
  },
};
</script>

<style lang="scss" scoped>
* {
  box-sizing: border-box;
}

.introduction {
  display: grid;
  grid-template-areas: "top" "middle";
  .nav-container {
    background-color: #EAE5DF;
    grid-area: top;
  }
  .main-view {
    padding: 10px 15px 30px 15px;
    grid-area: middle;

    @media (min-width: 0px) and (max-width: 767px) {
      display: flex;
      flex-direction: column;
    }

    @media (min-width: 768px) {
      display: grid;
      grid-template-columns: 100px 1fr;
    }

    .forest-home-svg {
      padding-top: 10px;
      padding-bottom: 30px;
    }
  }
}
</style>
