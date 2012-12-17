AS.Collections ||= {}
class AS.Collections.Tools extends Backbone.Collection
  url: -> "/tools"
  model: AS.Models.Tool