<template>
  <header id="header" class="container-fluid">
    <div class="row">
      <div class="col-sm-4 col-xs-12">
        <router-link to="/">
          <img src="../assets/images/general/logo.png" class="logo" @click="closeMenu" />
        </router-link>
      </div>
      <div :class="menuIsOpen ? 'col-sm-2 menuItem firstItem' : 'col-sm-2 hidden-xs menuItem firstItem'">
        <router-link to="/" class="link" @click.native="toggleMenu">
          <p class="en">Home</p>
          <p class="ja">トップページ</p>
        </router-link>
      </div>
      <div :class="menuIsOpen ? 'col-sm-2 menuItem' : 'col-sm-2 hidden-xs menuItem'">
        <router-link to="/vision" class="link" @click.native="toggleMenu">
          <p class="en">Vision</p>
          <p class="ja">ビジョン</p>
        </router-link>
      </div>
      <div :class="menuIsOpen ? 'col-sm-2 menuItem' : 'col-sm-2 hidden-xs menuItem'">
        <router-link to="/service" class="link" @click.native="toggleMenu">
          <p class="en">Service</p>
          <p class="ja">サービス</p>
        </router-link>
      </div>
      <div :class="menuIsOpen ? 'col-sm-2 menuItem' : 'col-sm-2 hidden-xs menuItem'">
        <router-link to="/contact" class="link" @click.native="toggleMenu">
          <p class="en">Contact</p>
          <p class="ja">お問い合わせ</p>
        </router-link>
      </div>
      <img src="../assets/images/general/menu.png" class="menuBtn visible-xs" @click="toggleMenu" />
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
        this.menuIsOpen = !this.menuIsOpen
      },
      closeMenu () {
        this.menuIsOpen = false
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
    background: #FFF;
    z-index: 3;
  }
  .logo {
    width: 180px;
    padding: 10px;
  }
  .menuItem {
    padding: 0px;
    text-align: center;
    transition: all .3s 0s ease;
  }
  .link {
    padding: 10px;
    color: #333;
    display: block;
    transition: all .3s 0s ease;
  }
  .link:hover {
    background: #EEE;
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
    top: 0px;
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
    .menuItem {
      border-top: 1px solid #CCC;
      background: #FFF;
    }
    .firstItem {
      border-top: 0px;
      margin-top: 50px;
    }
  }
</style>