<template>
  <div class="projects-container">
    <div class="projects-header-container">
      <div class="projects-image"><RaccoonDesk /></div>
      <div class="projects-navigation">
        It is here that you will discover a few of my personal projects
        including those of the creative as well as scientific nature.
      </div>
    </div>
    <div class="projects-content">
      <div class="single-project">
        <ProjectHeader headerText="Save The Lynx Game" />
        <p class="project-description">
          Save The Lynx Game is a two-player board game created to raise
          awarenesss of and depict the restoration of the Canadian lynx habitat.
          With this theme in mind, my goal was to learn the ReactJS framework
          along with brushing up on my Flask knowledge. During this years Advent
          Of Code, I enjoyed utilizing the flood-fill algorithm to complete
          several of the questions. That is also what enlightened me to include
          the algorithm in this project.
        </p>
        <img class="save-the-lynx" src="../assets/save-the-lynx-game-ss.png" />
      </div>
      <div class="single-project">
        <ProjectHeader headerText="Art's Apothecary Dispatch" />
        <p class="project-description">
          A pharmaceutical delivery planner for the hospital environment. Based
          on a recursive approach of Dijkstra's algorithm. (In process).
        </p>
      </div>
      <!-- <div class="single-project">
        <ProjectHeader headerText="Virtual Wildlife" />
        <ForestAnimal />
      </div> -->
    </div>
  </div>
</template>

<script>
// import ForestAnimal from "../components/forest-animal.vue";
import ProjectHeader from "../components/project-header.vue";
import RaccoonDesk from "../components/raccoon-desk.vue";

export default {
  name: "Projects",
  components: {
    // ForestAnimal,
    ProjectHeader,
    RaccoonDesk,
  },
};
</script>

<style lang="scss" scoped>
* {
  box-sizing: border-box;
}

.projects-container {
  .projects-header-container {
    display: grid;
    grid-template-columns: 55% 1fr;
    padding: 10px;
    text-align: right;

    .projects-navigation {
      padding: 10px;
      // background-color: #f5f0ec;
      // font-family: auto;
      // font-style: italic;
      // color: #5a1000;
      font-size: 28px;
    }

    @media (min-width: 0px) and (max-width: 767px) {
      display: flex;
      flex-direction: column-reverse;
    }
  }

  .projects-content {
    .single-project + .single-project {
      margin-top: 40px;
    }
    .single-project {
      .save-the-lynx {
        height: 700px;
      }
      .project-description {
        font-size: 22px;
      }
    }
  }
}
</style>
