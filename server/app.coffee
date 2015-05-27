'use strict'

process.env.NODE_ENV = process.env.NODE_ENV || 'development'

GLOBAL._require = (path)->
  return require(__dirname + "/#{path}")

express = require('express')
config = _require('config/environment')
models = _require('models')

app = express()

app.set 'models', models
_require('config/express')(app)
_require('routes')(app)


models.sequelize.sync().then ->
  require('http').createServer(app).listen config.port, config.ip, ()->
    console.log 'Domain Service listening on %d, in %s mode', config.port, app.get('env')

exports = module.exports = app
