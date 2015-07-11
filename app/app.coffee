module.hot.accept()

Ember = require 'ember'

require './stylesheets/style.css'
require 'public/index.html'

App = Ember.Application.extend
	LOG_ACTIVE_GENERATION: true,
	LOG_MODULE_RESOLVER: true,
	LOG_TRANSITIONS: true,
	LOG_TRANSITIONS_INTERNAL: true,
	LOG_VIEW_LOOKUPS: true,
	modulePrefix: 'js',

if !BaseApp
	BaseApp = App.create
		Resolver: require('ember-webpack-resolver?' + __dirname)({
			extensions: ['.coffee', '.hbs', '.handlebars']
		})

	BaseApp.rootElement = "body"
