html = require "lapis.html"

class MainLayout extends html.Widget
  @include require "views.mixin.favicon"
  @include require "lazuli.modules.user_management.views.mixin_menu"
  content: =>
    html_5 ->
      head ->
        meta charset:"utf-8"
        meta name:"viewport", content:"width=device-width, initial-scale=1"
        link rel:"stylesheet", href:"http://yui.yahooapis.com/pure/0.6.0/pure-min.css"
        link rel:"stylesheet", href:"http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css"
        link rel:"stylesheet", href:"/static/css/main_layout.css"
        title @title or (@has_content_for("title") and @content_for("title")) or "Komischfarben"
        @mixFavicon!
      body ->
        div id:"layout",->
          a href:"#menu",id:"menuLink",class:"menu-link",->
            span ""
          div id:"menu",->
            div class:"pure-menu pure-menu-open",->
              a class:"pure-menu-heading", href:"/", "Komischfarben"
              @userManagementMixinMenu{ul:"pure-menu-list",li:"pure-menu-item",a:"pure-menu-link"}
              ul class:"pure-menu-list", ->
                li class:"pure-menu-item",->
                  a class:"pure-menu-link",href:"https://github.com/nonchip/komischfarben2",style:"color:#555",target:"_blank","Github"
                li class:"pure-menu-item",->
                  a class:"pure-menu-link",href:"https://github.com/nonchip/komischfarben2/issues",style:"color:#555",target:"_blank","Report issues"
          div id:"main",->
            if true or @has_content_for "header" then
              div class:"header",->
                tt "BETA"
                @content_for "header"
            div class:"content",->
              @content_for "inner"
        script src:"/static/js/main_layout.js"
