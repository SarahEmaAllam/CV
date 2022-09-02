<template>
  <div>
    <Intro></Intro>
    <TimelineNode></TimelineNode>
  </div>
</template>

<script>
import TimelineNode from "../components/TimelineNode.vue";
import Intro from "../components/Intro.vue";

export default {
  name: "Projects.vue",
  components: {Intro, TimelineNode}
}
</script>

<style scoped>

</style>