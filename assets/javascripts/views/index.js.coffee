class App.IndexView extends Marionette.ItemView
  template: "hello_haml_coffee"

  serializeData: ->
    name: "visitor"
