class AS.Views.About extends Backbone.View
  tagName: 'div'
  className: 'about'

  template: -> JST["about"]()

  render: ->
    @$el.html @template()
    @$el