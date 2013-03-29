class Blog.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    "click .destroy" : "destroy"

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('change', @render, this)

  render: ->
    $(@el).html(@template(entries: @collection))
    this

  destroy: (event) ->
    model = @collection.get(event.target.getAttribute('data-id'))
    model.destroy()
    @getParentByTagName(event.target, 'tr').remove()
    this

  getParentByTagName: (obj, tag) ->
    obj_parent = obj.parentNode
    return false  unless obj_parent
    if obj_parent.tagName.toLowerCase() is tag
      obj_parent
    else
      @getParentByTagName obj_parent, tag