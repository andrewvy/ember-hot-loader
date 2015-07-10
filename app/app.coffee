Ember = require 'ember'

require 'public/index.html'

HMRApp = Ember.Application.create()
HMRApp.ApplicationView = require './views/application'
