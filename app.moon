lazuli = require "lazuli"
import cached from require "lapis.cache"

class extends lazuli.Application
  @include "lazuli.modules.user_management"
  layout: require "views.main_layout"
  [index: "/"]: cached exptime: 1, [1]: =>
    @html ->
      h1 "this page is still in development"
  handle_404: cached exptime: 1, [1]: =>
    @html ->
      div style:"margin:20%",->
        h1 "Oops!"
        h2 "That page just vanished..."
