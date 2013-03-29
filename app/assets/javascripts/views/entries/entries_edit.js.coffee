class Blog.Views.EntriesEdit extends Backbone.View

  template: JST['entries/edit']

  events:
    "submit #edit-entry": "update"

  render: ->
    $(@el).html(@template({entry: @model}))
    this

  update: (event) ->
    event.preventDefault()
    event.stopPropagation()
    @model.save({title: $('#title_content').val(), body: $('#body_content').val()},
                success: (post) =>
                  @model = post
                  window.location.hash = "/#{@model.id}")
