class Blog.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/new': 'new'

  initialize: ->
    this.route /^entries\/(\d)+$/, "show_entry", this.show

    @collection = new Blog.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new Blog.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  new: ->
    view = new Blog.Views.EntriesNew(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"