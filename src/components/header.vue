<template>
  <header id="header" class="container-fluid">
    <div class="row">
      <div class="col-sm-6 col-xs-10">
        <router-link to="/">
          <img src="../assets/images/general/logo.png" class="logo" />
        </router-link>
      </div>
      <div class="col-sm-2 hidden-xs menuItem">
        <router-link to="/" class="link">
          <p class="en">Company</p>
          <p class="ja">会社概要</p>
        </router-link>
      </div>
      <div class="col-sm-2 hidden-xs menuItem">
        <router-link to="/" class="link">
          <p class="en">Service</p>
          <p class="ja">サービス</p>
        </router-link>
      </div>
      <div class="col-sm-2 hidden-xs menuItem">
        <router-link to="/" class="link">
          <p class="en">Contact</p>
          <p class="ja">お問い合わせ</p>
        </router-link>
      </div>
      <div class="col-xs-2 visible-xs">
        <img src="../assets/images/general/menu.png" class="menuBtn" @click="toggleMenu" />
      </div>
    </div>
  </header><!-- /header -->
</template>

<script>
  export default {
    data () {
      return {
        menuIsOpen: false
      }
    },
    methods: {
      toggleMenu () {
        console.log(this.menuIsOpen)
        this.menuIsOpen = !this.menuIsOpen
      }
    }
  }
</script>

<style scoped>
  header {
    position: fixed;
    width: 100%;
    top: 0px;
    left: 0px;
    height: 62px;
    z-index: 3;
  }
  .logo {
    width: 180px;
    padding: 10px;
  }
  .menuItem {
    padding: 10px;
    text-align: center;
    transition: all .3s 0s ease;
  }
  .link {
    color: #333;
  }
  .menuItem p {
    margin: 0px;
  }
  .menuItem .en {
    font-weight: bold;
    font-size: 17px;
  }
  .menuItem .ja {
    font-size: 13px;
  }
  .menuBtn {
    position: absolute;
    right: 0px;
    width: 52px;
    padding: 5px;
  }
  @media screen and (max-width: 767px){
    header {
      height: 51px;
    }
    .logo {
      width: 140px;
    }
  }
</style>