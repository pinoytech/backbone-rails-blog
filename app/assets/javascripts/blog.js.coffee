window.Blog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Blog.Routers.Entries
    Backbone.history.start()
#    Backbone.History.start({pushState : false});

$(document).ready ->
  Blog.initialize()


