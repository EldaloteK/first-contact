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
        <ProjectHeader
          headerText="The Apothecary Dispatch"
          headerLink="https://github.com/EldaloteK/the-apothecary-dispatch"
        />
        <p class="project-description">
          A pharmaceutical delivery planner for the hospital environment. Based
          upon Dijkstra's algorithm and utilizes Docker, Flutter, Dart, Python
          and Flask. (In process)
        </p>
      </div>
      <div class="single-project">
        <ProjectHeader
          headerText="Save The Lynx Game"
          headerLink="https://github.com/EldaloteK/save-the-lynx-game"
        />
        <p class="project-description">
          Save The Lynx Game is a two-player board game created to raise
          awarenesss of and depict the restoration of the Canadian lynx habitat.
          With this theme in mind, my goal was to learn the ReactJS framework
          along with brushing up on my Flask knowledge. During this years Advent
          Of Code, I enjoyed utilizing the flood-fill algorithm to complete
          several of the questions. That is also what enlightened me to include
          the algorithm in this project.
        </p>
        <img
          class="save-the-lynx"
          src="../assets/save-the-lynx-game-image.png"
        />
      </div>
      <div class="single-project">
        <ProjectHeader headerText="Virtual Wildlife" />
        <p class="project-description">
          A virtual simulator created while learning more about developing with
          SVG. This was the predecessor to this portfolio as I wanted to delve
          into my artistic side while incorportating my technical skills.
        </p>
        <ForestAnimal />
      </div>
    </div>
  </div>
</template>

<script>
import ForestAnimal from "../components/forest-animal.vue";
import ProjectHeader from "../components/project-header.vue";
import RaccoonDesk from "../components/raccoon-desk.vue";

export default {
  name: "Projects",
  components: {
    ForestAnimal,
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
        max-height: 700px;
      }
      .project-description {
        font-size: 22px;
      }
    }
    img {
      max-width: 100%;
    }
  }
}
</style>
