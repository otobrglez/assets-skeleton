class AS.Views.HomeView extends Backbone.View
  tagName: 'div'
  className: 'tools'

  events:
    "click .delete": "delete"

  initialize: ->
    @tools = new AS.Collections.Tools()
    @tools.on "change", @render()

  context: ->
    tools: @tools.models

  template: ->
    JST["tools/list"](@context())

  render: ->
    @$el.html @template()
    @$el

  delete: (e)->
    e.preventDefault()
    id = $(e.currentTarget).parents("li").data("id")
    model = new AS.Models.Tool {id: id}
    model.fetch success: =>
      model.destroy success: =>
        this.tools.fetch {}
