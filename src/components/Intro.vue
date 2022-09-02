<template>
  <div class="card">
    <p class="subtitle is-6">
      Greetings! I am
    </p>
    <header class="card-header" card-header-weight="weight-bold">
      <p class="card-header-title">
        Sarah Allam
      </p>

    </header>
    <div class="card-image">
      <figure class="image is-4by3">
        <SpinImage></SpinImage>

      </figure>
    </div>
    <div class="card-content">
      <div class="media">
        <div class="media-left">
          <figure class="image is-48x48">
            <img alt="Vue logo" class="logo" src="./icons/me.jpg" width="125" height="125" />
          </figure>
        </div>
        <div class="media-content">
          <p class="title is-4">John Smith</p>
          <p class="subtitle is-6">@johnsmith</p>
        </div>
      </div>

      <div class="content">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Phasellus nec iaculis mauris. <a>@bulmaio</a>.
        <a href="#">#css</a> <a href="#">#responsive</a>
        <br>
      </div>
    </div>
  </div>
</template>

<script>
import "../components/icons/me.jpg";
import SpinImage from "./icons/SpinImage.vue";


export default {
  name: "Intro",
  components: {SpinImage}
}
</script>

<style scoped>

</style>