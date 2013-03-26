class Blog.Collections.Entries extends Backbone.Collection

  model: Blog.Models.Entry

  url: '/api/entries'
