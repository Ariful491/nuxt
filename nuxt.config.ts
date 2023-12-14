// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({


    app: {
        // 'link': [
        //
        //     { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
        // ],
    },

    devtools: {
        enabled: true
    },
    modules: [
        '@nuxtjs/tailwindcss',
        '@nuxt/image',
      //  '@vueuse/nuxt',
    ],
    css: []
    /* head: {
         link: [
             { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
         ]
     }*/
})
