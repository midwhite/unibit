import Vue from 'vue'
import Router from 'vue-router'

import Home from '@/components/home'
import Service from '@/components/service'
import Company from '@/components/company'
import Contact from '@/components/contact'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home
    }, {
      path: '/company',
      name: 'Company',
      component: Company
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
