html = require "lapis.html"
config = (require "lapis.config").get!
appname=config.appname or "meinTetrisstein.de"
class MainLayout extends html.Widget
  @include require "views.mixin.favicon"
  content: =>
    html_5 ->
      head ->
        meta charset:"utf-8"
        meta name:"viewport", content:"width=device-width, initial-scale=1"
        link rel:"stylesheet", href:"http://yui.yahooapis.com/pure/0.6.0/pure-min.css"
        link rel:"stylesheet", href:"http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css"
        link rel:"stylesheet", href:"//cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.1.1/gh-fork-ribbon.min.css"
        title @title or (@has_content_for("title") and @content_for("title")) or appname
        @mixFavicon!
      body ->
        div class:"github-fork-ribbon-wrapper left-bottom",->
          div class:"github-fork-ribbon",style:"background-color: #333;",->
            a href:"https://github.com/nonchip/meintetrisstein.de", "Fork me on GitHub"

