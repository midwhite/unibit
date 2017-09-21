import Vue from 'vue'
import Router from 'vue-router'

import Home from '@/components/home'
import Service from '@/components/service'
import Vision from '@/components/vision'
import Contact from '@/components/contact'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    }, {
      path: '/vision',
      name: 'Vision',
      component: Vision
    }, {
      path: '/service',
      name: 'Service',
      component: Service
    }, {
      path: '/contact',
      name: 'Contact',
      component: Contact
    }
  ]
})
