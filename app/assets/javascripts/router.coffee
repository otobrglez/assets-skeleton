# By Oto Brglez - <oto.brglez@dlabs.si>

class AS.Router extends Backbone.Router
  routes:
    "":  "home"
    "about": "about"

  home: ->
    console.log "i call it home"

  about: ->
    console.log "about"