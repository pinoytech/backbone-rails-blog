class Blog.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/new': 'new'
    "entries/:id/edit" : "edit"

  initialize: ->
    this.route /^entries\/(\d+)$/, "show_entry", @show

    @collection = new Blog.Collections.Entries()
    @collection.fetch()

  index: ->
    view = new Blog.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  new: ->
    view = new Blog.Views.EntriesNew(collection: @collection)
    $('#container').html(view.render().el)

  edit: (id) ->
    model = @collection.get(id)
    view = new Blog.Views.EntriesEdit(model: model)
    $('#container').html(view.render().el)

  show: (id) ->
    model = @collection.get(id)
    # model.comments.fetch()
    view = new Blog.Views.EntriesShow({model: model})
    # view = new Blog.Views.EntriesShow({model: model, comments: model.comments})
    $('#container').html(view.render().el)