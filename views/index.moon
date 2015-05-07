html = require "lapis.html"

class Index extends html.Widget
  content: =>
    div class:"center", ->
      h1 "Du bist ein"
      img class:"bigpiece",src:"/static/img/pieces/"..@piece..".png"
    div class:"footer", ->
      a href:@url_for("byID",id:@piece),"Link auf Deinen Tetrisstein"
      br!
      a href:@url_for("index"),"Neues Steinchen gef&auml;llig?"