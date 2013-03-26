class Blog.Views.EntriesNew extends Backbone.View

  template: JST['entries/new']

  events:
    'submit #new_entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this

  createEntry: (event) ->
    event.preventDefault()
    @collection.create title: $('#title_content').val(), body: $('#body_content').val()