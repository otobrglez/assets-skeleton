class AS.Router extends Backbone.Router
  routes:
    "":  "home"
    "about": "about"
    "new": "new_tool"
    "edit/:id": "edit_tool"

  about: ->
    AS.show_view new AS.Views.About()

  home: ->
    @home_view = new AS.Views.HomeView()
    @home_view.tools.fetch success: (tools)=>
      AS.show_view this.home_view

  new_tool: ->
    AS.show_view new AS.Views.Editor()

  edit_tool: (id)->
    @tool = new AS.Models.Tool {id: id}
    @tool.fetch success: (tool)->
      AS.show_view new AS.Views.Editor(model: tool)
