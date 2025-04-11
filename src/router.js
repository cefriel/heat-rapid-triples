import Vue from 'vue'
import Router from 'vue-router'

import AssetCreate from './components/AssetCreate.vue'

Vue.use(Router)


const router= new Router({
    mode: 'history',
    routes: [
        {
            path: '/qkg-rapid-triples/',
            name: 'asset_create',
            component: AssetCreate,
            props: {
                asset_type : 'Procedure'
            },
            meta: {
                title: "Cefriel KG Questionnaire Generator",
            }
        },
    ]
})

export default router
