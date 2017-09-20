<template>
  <div id="app">
    <HeaderMenu />
    <div id="contentArea" class="container-fluid">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
import HeaderMenu from './components/header'

export default {
  name: 'app',
  components: {
    HeaderMenu
  }
}
</script>

<style scoped>
  #app {
    background: #F4F4F4;
  }
  #contentArea {
    margin-top: 62px;
  }

  @media screen and (max-width: 767px){
    #contentArea {
      margin-top: 51px;
    }
  }
</style>