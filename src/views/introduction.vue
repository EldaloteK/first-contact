<template>
  <div class="introduction">
    <Navigation @navChoice="performNavSelection" />
    <div class="main-room">
      <ForestHome v-show="navChoice == 1" :move-raccoon="moveRaccoon" />
      <Projects v-show="navChoice == 2" />
    </div>
    <!-- <defs>
            <pattern id="pattern-1" patternUnits="objectBoundingBox" y="-103.986539%" height="203.986539%" width="100%">
                <use href="#image-2" transform="scale(1.03622597,1.03622597)"></use>
            </pattern>
            <image id="image-2" width="800" height="1200" href="src/assets/bubingaWood1.jpeg"></image>
        </defs> -->
  </div>
</template>

<script>
import Navigation from "../components/navigation.vue";
import ForestHome from "../components/forest-home.vue";
import Projects from "../components/projects.vue";
import { ref } from "vue";

export default {
  name: "Introduction",
  components: {
    ForestHome,
    Navigation,
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
      // navChoice.value = choice;
      if (choice === 2) {
        moveRaccoon.value = true;
        setTimeout(() => onChoiceTwo(choice), 1000);
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
  // margin-top: 8px;
  display: grid;
  // grid-template-rows: 12% 88%;
  grid-template-areas: "top" "middle";
  .navigation {
    background-color: #f2ede7;
    grid-area: top;
  }
  .main-room {
    // border-top: 5px double #A0430B30;
    padding: 10px 15px 30px 15px;
    grid-area: middle;
    display: flex;
    flex-direction: column;
    .forest-home-svg {
      padding: 10px 15px 30px 15px;
      // max-height: 670px;
    }
  }
}
</style>
