# By Oto Brglez - <oto.brglez@dlabs.si>

window.AS =
  Models: {}
  Collections: {}
  Views: {}
  Helpers: {}

  init: ()->
    @router ||= new AS.Router()
    Backbone.history.start()

  show_view: (view)->
    @current_view.close() if @current_view? and @current_view.close?
    @current_view = view
    @current_view.render()
    $('#container').empty().append @current_view.$el

$ ->
  AS.init()
