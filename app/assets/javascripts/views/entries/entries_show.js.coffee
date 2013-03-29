class Blog.Views.EntriesShow extends Backbone.View

  template: JST['entries/show']

  render: ->
    $(@el).html(@template({entry: @model}))
    this