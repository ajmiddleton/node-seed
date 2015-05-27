'use strict'

express = require('express')
morgan = require('morgan')
bodyParser = require('body-parser')
methodOverride = require('method-override')
config = _require('config/environment')

module.exports = (app)->
  env = app.get('env')

  app.use bodyParser.urlencoded({extended: false})
  app.use bodyParser.json()
  app.use methodOverride()
  app.use morgan("combined")
