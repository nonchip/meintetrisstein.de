html = require "lapis.html"

class Index extends html.Widget
  content: =>
    h1 "Du bist ein"
    img class:"bigpiece",src:"/static/img/pieces/"..@piece..".png"