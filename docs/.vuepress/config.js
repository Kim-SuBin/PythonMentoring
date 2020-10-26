module.exports = {
    title: 'VuePress 시작!',
    description: 'Hello World',
    head: [
        ['link', { rel: 'icon', href: '/images/logo-144.png' }],
        ['link', { rel: 'manifest', href: '/manifest.json' }],
        ['meta', { name: 'theme-color', content: '#3eaf7c' }],
        ['meta', { name: 'apple-mobile-web-app-capable', content: 'yes' }],
        ['meta', { name: 'apple-mobile-web-app-status-bar-style', content: 'black' }],
        ['link', { rel: 'apple-touch-icon', href: `/images/logo-144.png` }],
        ['link', { rel: 'mask-icon', href: '/images/logo-144.png', color: '#3eaf7c' }],
        ['meta', { name: 'msapplication-TileImage', content: '/images/logo-144.png' }],
        ['meta', { name: 'msapplication-TileColor', content: '#000000' }]
    ],
    plugins: [
        '@vuepress/back-to-top',
        ['@vuepress/pwa', {
            serviceWorker: true,
            updatePopup: true
        }]
    ],
    themeConfig: {
        displayAllHeaders: false,
        lastUpdated: 'Last Updated',
        nav: [
            { text: 'Home', link: '/' },
            { text: 'About', link: '/about/' }
        ]
    }
}