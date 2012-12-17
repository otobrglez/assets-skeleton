class AS.Views.Editor extends Backbone.View
  className: 'tools'

  events:
    "submit #tools-form": "submit_form"

  initialize: ->
    @model ||= new AS.Models.Tool()
    @binder = new Backbone.ModelBinder({})
    @model.on "change", => @form_change()

  context:->
    @model.attributes

  template: ->
    JST["tools/editor"](@context())

  render: ->
    @$el.html @template()
    @binder.bind @model, @$('#tools-form')
    @$el

  form_change: (e)->
    # Handle form changes here. Like validation.

  submit_form: (e)->
    e.preventDefault()
    @model.save null, {
      success: =>
        console.log "ok"
      error: =>
        console.log "error"
    }
