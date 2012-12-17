
_.extend(Backbone.Model.prototype, Backbone.Validation.mixin);

class AS.Models.Tool extends Backbone.Model
  url: ->
    return "/tools/#{@get('id')}.json" if @get('id')?
    "/tools"

  parse: (tool_item)->
    return {} unless tool_item?
    return tool_item.tool if tool_item.tool?
    tool_item

  toJSON: ->
    tool:
      @attributes

  validation:
    name:
      required: true
    url:
      required: true
