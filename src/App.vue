<template>
  <div id="app">
    <HeaderMenu />
    <div id="contentArea" class="container-fluid">
      <router-view></router-view>
    </div>
    <FooterView />
  </div>
</template>

<script>
import HeaderMenu from './components/header'
import FooterView from './components/footer'

export default {
  name: 'app',
  components: {
    HeaderMenu,
    FooterView
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