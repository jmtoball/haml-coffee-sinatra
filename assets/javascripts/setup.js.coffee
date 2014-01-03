window.App = new Marionette.Application

Backbone.Marionette.Renderer.render = (template, data) ->
  unless JST[template]
    throw "Template '" + template + "' not found!"
  JST[template](data)

class App.Controller
  index: =>
    App.main.show(new App.IndexView)

class App.Router extends Backbone.Marionette.AppRouter
  appRoutes:
    '': 'index'

App.router = new App.Router
  controller: new App.Controller()

App.addRegions
  "main": "#main"

App.addInitializer ->
  Backbone.history.start()

$(document).ready ->
  App.start()
