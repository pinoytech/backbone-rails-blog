window.Blog =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new Blog.Routers.Entries
    Backbone.history.start()

$(document).ready ->
  Blog.initialize()