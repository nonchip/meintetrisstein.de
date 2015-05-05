config = (require "lapis.config").get!
appname=config.appname or "KomischFarben"
class FaviconMixin
  mixFavicon: ()-> --http://realfavicongenerator.net/
    meta name:"application-name", content:appname
    meta name:"apple-mobile-web-app-title", content:appname
    meta name:"msapplication-config", content:"/static/img/favicon/browserconfig.xml"
    meta name:"msapplication-TileImage", content:"/static/img/favicon/mstile-144x144.png"
    meta name:"msapplication-TileColor", content:"#2b5797"
    link rel:"shortcut icon", href:"/static/img/favicon/favicon.ico"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-192x192.png", sizes:"192x192"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-160x160.png", sizes:"160x160"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-96x96.png", sizes:"96x96"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-16x16.png", sizes:"16x16"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-32x32.png", sizes:"32x32"
    link rel:"apple-touch-icon", sizes:"57x57", href:"/static/img/favicon/apple-touch-icon-57x57.png"
    link rel:"apple-touch-icon", sizes:"114x114", href:"/static/img/favicon/apple-touch-icon-114x114.png"
    link rel:"apple-touch-icon", sizes:"72x72", href:"/static/img/favicon/apple-touch-icon-72x72.png"
    link rel:"apple-touch-icon", sizes:"144x144", href:"/static/img/favicon/apple-touch-icon-144x144.png"
    link rel:"apple-touch-icon", sizes:"60x60", href:"/static/img/favicon/apple-touch-icon-60x60.png"
    link rel:"apple-touch-icon", sizes:"120x120", href:"/static/img/favicon/apple-touch-icon-120x120.png"
    link rel:"apple-touch-icon", sizes:"76x76", href:"/static/img/favicon/apple-touch-icon-76x76.png"
    link rel:"apple-touch-icon", sizes:"152x152", href:"/static/img/favicon/apple-touch-icon-152x152.png"
    link rel:"apple-touch-icon", sizes:"180x180", href:"/static/img/favicon/apple-touch-icon-180x180.png"
