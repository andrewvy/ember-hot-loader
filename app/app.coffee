module.hot.accept()

Ember = require 'ember'

require './stylesheets/style.css'

unless window.App
	window.App = new Ember.Application()
	window.App.register('ApplicationTemplate', require('./templates/application'))

