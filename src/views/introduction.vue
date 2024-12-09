<template>
  <div class="introduction">
    <Navigation :class="{ 'view-not-forest': navChoice != 1 }" @navChoice="performNavSelection" />
    <div class="main-view">
      <div class="main-view-right">
        <ForestHome v-show="navChoice == 1 || navChoice == 4" :move-raccoon="moveRaccoon" ref="forest" />
        <Projects v-show="navChoice == 2" />
        <Photography v-show="navChoice == 3" />
      </div>
    </div>
    <div class="footer">
      <div class="social-item">
        <a :href="`https://www.linkedin.com/in/kristymeley`" target="_blank" rel="noopener noreferrer">
          <img src="../assets/li-blue-small.png" :href="`https://www.linkedin.com/in/kristymeley`"
            class="social-logo"></img>
        </a>
      </div>
      <div class="social-item">
        <a :href="`https://github.com/EldaloteK`" target="_blank" rel="noopener noreferrer">
          <img src="../assets/github-mark.png" :href="`https://www.linkedin.com/in/kristymeley`"
            class="social-logo"></img>
        </a>
      </div>
    </div>
  </div>
</template>

<script>
import Contact from "../components/contact.vue";
import Navigation from "../components/navigation.vue";
import ForestHome from "../components/forest-home.vue";
import Projects from "../views/projects.vue";
import Photography from "../views/photography.vue";
import { onMounted, useTemplateRef, ref } from "vue";

export default {
  name: "Introduction",
  components: {
    Contact,
    ForestHome,
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
    const forestHomeRef = useTemplateRef('forest');

    function onChoiceTwo(choice) {
      navChoice.value = choice;
      moveRaccoon.value = false;
    }

    function performNavSelection(choice) {
      console.log('choice', choice);
      if (choice === 2 && navChoice.value == 1) {
        moveRaccoon.value = true;
        setTimeout(() => onChoiceTwo(choice), 800);
      } else {
        navChoice.value = choice;
      }

      if (choice === 4) {
        console.log(forestHomeRef);
        forestHomeRef.value.scrollTo();
      }
    }

    onMounted(() => {
      console.log('hjsdlfls')
      console.log(forestHomeRef.value);
    });

    return {
      moveRaccoon,
      navChoice,
      performNavSelection,
    };
  }
};
</script>

<style lang="scss" scoped>
* {
  box-sizing: border-box;
}

.introduction {
  display: grid;
  grid-template-areas: "top" "middle" "bottom";

  .nav-container {
    background-color: #EAE5DF;
    grid-area: top;
  }

  .main-view {
    grid-area: middle;

    @media (min-width: 0px) and (max-width: 767px) {
      display: flex;
      flex-direction: column;
    }

    @media (min-width: 768px) {
      display: grid;
      grid-template-columns: 1fr;
    }

    .forest-home-svg {
      padding-top: 10px;
      padding-bottom: 30px;
    }
  }

  .footer {
    grid-area: bottom;
    display: flex;
    flex-direction: row;
    justify-content: end;
    align-items: baseline;
    background-color: #D0CAC3;
    padding: 2rem 5rem;
  }

  .social-logo {
    height: 30px;
  }

  .social-item+.social-item {
    margin-left: 20px;
  }
}
</style>
