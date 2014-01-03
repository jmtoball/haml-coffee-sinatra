#= require hamlcoffee
#= require_tree ./templates
#= require lib/jquery
#= require lib/lodash.underscore
#= require lib/backbone
#= require lib/backbone.marionette
#= require_self

$(document).ready ->
  document.getElementById('target').innerHTML = JST['hello_haml_coffee']({ name: 'visitor' })
