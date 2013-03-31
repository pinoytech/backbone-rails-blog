class Blog.Views.EntriesShow extends Backbone.View

  template: JST['entries/show']

  events:
    'submit #new_comment': 'createComment'

  render: ->
    # console.log(@comments)
    $(@el).html(@template({entry: @model, comments: @comments}))
    @

  createComment: (event) ->
    event.preventDefault()
    @comments.create {name: $('#name').val(), message: $('#message').val()}