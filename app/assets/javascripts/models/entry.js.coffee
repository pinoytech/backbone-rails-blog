class Blog.Models.Entry extends Backbone.Model
  initialize: ->
    @comments = new Blog.Collections.Comments
    @comments.url = '/api/entries/' + @id + '/comments'
