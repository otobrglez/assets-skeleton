# By Oto Brglez - <oto.brglez@dlabs.si>

window.AS =
  Models: {}
  Collections: {}
  Views: {}
  Helpers: {}
  api_root: -> "/"
  init: ()->
    @router ||= new AS.Router()
    Backbone.history.start()

$ ->
  AS.init()
