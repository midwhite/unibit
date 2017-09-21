<template>
  <div id="home">
    <div class="row">
      <div id="firstview" class="col-sm-12">
        <div class="overlay">
          <h1>Lorem Ipsum</h1>
        </div>
      </div>
    </div>
    <Vision />
  </div>
</template>

<script>
  import Vision from './contents/vision'

  export default {
    methods: {},
    components: {
      Vision
    }
  }

  // ファーストビューのアニメーション
  const zoomFirstView = (num) => {
    const positions = [
      'left top',
      'right top',
      'right bottom',
      'left bottom'
    ]
    const sizes = [
      '100% 100%',
      '160% 180%'
    ]
    const view = document.getElementById('firstview')
    if (view) {
      view.style.backgroundPosition = positions[num % 4]
      view.style.backgroundSize = sizes[num % 2]
    }
    setTimeout(() => {
      zoomFirstView(num + 1)
    }, 5000)
  }
  setTimeout(() => {
    // 初回実行
    zoomFirstView(0)
  }, 1000)
</script>

<style scoped>
  #firstview {
    position: relative;
    height: 300px;
    padding: 0px;
    background: url(../assets/images/general/firstview_1.jpg) no-repeat;
    background-position: left bottom;
    background-size: 160% 180%;
    transition: all 5s 0s ease;
  }
  .overlay {
    position: absolute;
    top: 0px;
    bottom: 0px;
    left: 0px;
    right: 0px;
    width: 100%;
    height: 100%;
    background: rgba(255,255,255,.2);
  }
  h1 {
    position: absolute;
    top: 0px;
    bottom: 0px;
    width: 100%;
    height: 1em;
    margin: auto 0px;
    font-size: 60px;
    text-align: center;
  }
  @media screen and (min-width: 768px){
    #firstview {
      height: 500px;
    }
  }
</style>