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
    data_id = event.target.getAttribute('data-id')
    model = @collection.get(data_id)
    model.destroy()
    $('a[data-id="" + data_id + ""]').parents('tr').remove()
#    @getParentByTagName(event.target, 'tr').remove()
    @

  getParentByTagName: (obj, tag) ->
    obj_parent = obj.parentNode
    return false  unless obj_parent
    if obj_parent.tagName.toLowerCase() is tag
      obj_parent
    else
      @getParentByTagName obj_parent, tag