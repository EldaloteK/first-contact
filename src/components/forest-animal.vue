<template>
  <div class="wrapper">
    <svg
      width="400px"
      height="500px"
      viewBox="0 0 281 397"
      version="1.1"
      xmlns="http://www.w3.org/2000/svg"
      xmlns:xlink="http://www.w3.org/1999/xlink"
    >
      <g
        id="Page-1"
        stroke="none"
        stroke-width="1"
        fill="none"
        fill-rule="evenodd"
      >
        <g id="Group" stroke="#A09310" stroke-width="3">
          <path
            d="M140,1.5 C145.660919,1.5 150.785919,3.79454066 154.495689,7.50431099 C158.205459,11.2140813 160.5,16.3390813 160.5,22 C160.5,27.1767371 158.581317,31.9054083 155.415965,35.5133262 C154.842554,36.1669089 154.227353,36.7847145 153.575559,37.3630019 C154.455592,37.5491078 155.325666,37.7478228 156.185402,37.9591957 C185.470054,45.1590575 218.572033,70.9327516 243.10551,106.611862 C264.583648,137.847583 279.5,176.707714 279.5,217.5 C279.5,265.820726 263.76377,310.35645 238.323478,342.714785 C213.228281,374.634183 178.678129,394.706524 140.5,394.706524 C102.321871,394.706524 67.7717185,374.634183 42.6765218,342.714785 C17.2362304,310.35645 1.5,265.820726 1.5,217.5 C1.5,176.9087 16.2698003,138.230545 37.5774782,107.073989 C61.920299,71.479381 94.8029114,45.6611522 124.01674,38.1584334 C124.879746,37.9367955 125.753259,37.7276203 126.632498,37.5305728 C125.968233,36.9605313 125.342051,36.3492172 124.757602,35.7010726 C121.488361,32.0755342 119.5,27.2698985 119.5,22 C119.5,16.3390813 121.794541,11.2140813 125.504311,7.50431099 C129.214081,3.79454066 134.339081,1.5 140,1.5 Z"
            id="Combined-Shape"
            fill="#d9cfe3"
          ></path>
          <ellipse
            class="animal-button"
            @click="chooseAnimal(1)"
            id="Oval"
            fill="#24C796"
            cx="100"
            cy="338.5"
            rx="13.5"
            ry="18"
          ></ellipse>
          <ellipse
            class="animal-button"
            @click="chooseAnimal(3)"
            id="Oval"
            fill="#24C796"
            cx="182"
            cy="338.5"
            rx="13.5"
            ry="18"
          ></ellipse>
          <ellipse
            class="animal-button"
            @click="chooseAnimal(2)"
            id="Oval"
            fill="#24C796"
            cx="141"
            cy="358.5"
            rx="13.5"
            ry="18"
          ></ellipse>
          <polygon
            id="Path"
            fill="#197B0C"
            points="104.273551 141 85 117.249177 79.1318103 141 52.8603414 133.783508 65 174.542855 47.1724681 203.372528 65 229.169242 52.8603414 260.257807 65 266.064152 47.1724681 286.463767 65 286.463767 65 312.09245 85 290 104.273551 299.950198 115 290 136.522407 299.950198 171.961212 290 203.043946 312.09245 210.08416 290 232.845885 276.902721 216 269.324896 232.845885 245.168813 216 239.194793 224.040943 207.981286 216 190.259833 237.21546 180.801084 216 170.474642 229.392565 141 210.08416 141 203.043946 117.249177 195 141 180 125.851903 171.961212 141 149.757373 117.249177 142.193964 141 120.205431 125.851903"
          ></polygon>
          <rect
            id="Rectangle"
            fill="#F2FFFB"
            x="66.5"
            y="142.5"
            width="148"
            height="146"
            rx="8"
          ></rect>
          <ellipse
            id="Oval"
            fill="#FFFFFF"
            cx="140.5"
            cy="21"
            rx="8"
            ry="8.5"
          ></ellipse>
          <path
            d="M140,54.9075376 L156.289366,84.9552713 L140,114.334921 L123.710634,84.9552713 L140,54.9075376 Z"
            id="Rectangle"
            fill="#CB079A"
          ></path>
        </g>
      </g>
    </svg>
    <AnimalA v-show="animalChoice == 1" class="forest-animal animal-a" />
    <AnimalB v-show="animalChoice == 2" class="forest-animal" />
    <AnimalC v-show="animalChoice == 3" class="forest-animal" />
  </div>
</template>

<script>
import AnimalA from "./animal-a";
import AnimalB from "./animal-b";
import AnimalC from "./animal-c";

import { ref } from "vue";

export default {
  name: "ForestAnimal",
  components: {
    AnimalA,
    AnimalB,
    AnimalC,
  },
  setup() {
    const animalChoice = ref(3);

    function chooseAnimal(choice) {
      animalChoice.value = choice;
    }

    return {
      animalChoice,
      chooseAnimal,
    };
  },
};
</script>

<style lang="scss" scoped>
.wrapper {
  background: #f2ede7;
  position: relative;
  display: flex;
  justify-content: center;
  // .test {
  //   max-width: 400px;
  //   width: 100%;
  // }
  .animal-button:hover {
    cursor: pointer;
  }
  .forest-animal {
    position: absolute;
    max-width: 95px;
    width: 100%;
    top: 53%;
    transform: translateY(-45%);
    z-index: 1;
  }
  .animal-a {
    padding-right: 25px;
  }
}
</style>
