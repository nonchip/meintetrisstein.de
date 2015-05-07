config = (require "lapis.config").get!
appname=config.appname or "meinTetrisstein.de"
class FaviconMixin
  mixFavicon: ()-> --http://realfavicongenerator.net/
    meta name:"application-name", content:appname
    meta name:"apple-mobile-web-app-title", content:appname
    meta name:"msapplication-config", content:"/static/img/favicon/browserconfig.xml"
    meta name:"msapplication-TileColor", content:"#363636"
    meta name:"theme-color", content:"#000000"
    link rel:"shortcut icon", href:"/static/img/favicon/favicon.ico"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-96x96.png", sizes:"96x96"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-16x16.png", sizes:"16x16"
    link rel:"icon", type:"image/png", href:"/static/img/favicon/favicon-32x32.png", sizes:"32x32"
    link rel:"apple-touch-icon", sizes:"57x57", href:"/static/img/favicon/apple-touch-icon-57x57.png"
    link rel:"apple-touch-icon", sizes:"72x72", href:"/static/img/favicon/apple-touch-icon-72x72.png"
    link rel:"apple-touch-icon", sizes:"60x60", href:"/static/img/favicon/apple-touch-icon-60x60.png"
    link rel:"apple-touch-icon", sizes:"76x76", href:"/static/img/favicon/apple-touch-icon-76x76.png"
