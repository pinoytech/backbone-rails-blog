class Blog.Views.EntriesEdit extends Backbone.View

  template: JST['entries/edit']

  events:
    'submit #edit_entry': 'updateEntry'

  render: ->
    $(@el).html(@template({entry: @model}))
    @

  updateEntry: (event) ->
    event.preventDefault()
    event.stopPropagation()
    @model.save title: $('#title_content').val(), body: $('#body_content').val()
