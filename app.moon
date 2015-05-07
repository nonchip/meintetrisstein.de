lazuli = require "lazuli"
import cached from require "lapis.cache"

class extends lazuli.Application
  layout: require "views.main_layout"
  [index: "/"]: cached exptime: 1, [1]: =>
    @piece=math.random(1,7)
    render: true
  handle_404: cached exptime: 1, [1]: =>
    @html ->
      div style:"margin:20%",->
        h1 "Oops!"
        h2 "That page just vanished..."
