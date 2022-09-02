<template>
  <div class="spin-box">
    <div class="spin-container" :style="cssSpinContainer">
      <div class="spin-shape" :style="cssSpinMorph">
        <div class="spin-border" :style="cssSpinContainer"></div>
      </div>
    </div>
  </div>

</template>

<script>

export default {
  name: "SpinImage",

  data() {
    return {

      spinTime: this.choose([40, 60, 80, 100]),
      morphTime: this.choose([4, 6, 8, 10]),

    }
  },

  // computed: {
  //   cssSpinContainer() {
  //     return {
  //       'animation-duration': this.spinTime,
  //     }
  //   },
  //
  //   cssSpinMorph() {
  //     return {
  //       'animation-duration': this.morphTime,
  //     }
  //   }
  // },

  methods: {
    cssSpinContainer: function () {
      setInterval(function() {
        this.spinTime = this.choose([40, 60, 80, 100])
        return {
          'animation-duration': this.spinTime,
        }
      }, 50)
    },

    cssSpinMorph() {
      setInterval(function() {
      this.morphTime = this.choose([4, 6, 8, 10])
      return {
        'animation-duration': this.morphTime,
      }
      }, 50)
    },

    choose(choices)
    {
      setInterval(function() {
      var index = Math.floor(Math.random() * choices.length);
      return choices[index];
      }, 50)
    }
 }

}
</script>

<style scoped>

.spin-box {
  width: 400px;
  height: 400px;
  position: relative;
  max-width: 400px;
  max-height: 400px;
  margin: 0.5rem auto;
}

@keyframes spin {
  to {
    transform: rotate(4turn);
  }
}

.spin-container {
  width: 100%;
  height: 100%;
  animation: spin linear infinite;
  position: relative;
}

@keyframes morph {
  0% {
    /*border-radius: 40% 60% 60% 40% / 60% 30% 70% 40%;*/
    border-radius: 50% 70% 75% 40% / 70% 40% 60% 40%;

  }
  100% {
    border-radius: 40% 60%;
  }
}

.spin-shape {
  width: 100%;
  height: 100%;
  transition: border-radius 1s ease-out;
  border-radius: 60% 40% 30% 70% / 60% 30% 70% 40%;
  /* border-radius: "50px 200px 50px 150px" / "150px 50px 200px 50px"; */
  animation: morph ease-in-out infinite both alternate;
  animation-duration: 5s;
  position: absolute;
  overflow: hidden;
  z-index: 5;
}

.spin-border {
  width: 142%;
  height: 142%;
  position: absolute;
  left: -21%;
  top: -21%;
  background-size: 100%;
  background-position: center center;
  display: flex;
  font-size: 5vw;
  font-weight: bold;
  align-items: center;
  justify-content: center;
  text-align: center;
  text-transform: uppercase;
  animation: spin linear infinite reverse;
  opacity: 1;
  z-index: 2;
  background-image: url(../icons/me.jpg);
}

</style>