'use strict'

Sequelize = require('sequelize')
db = require('../config/environment').db
fs = require('fs')
path = require('path')
models = {}
sequelize = new Sequelize db.name, db.username, db.password, db.options

basename = path.basename(module.filename)
fs.readdirSync(__dirname)
  .filter (file)->
    return (file.indexOf(".") != 0) && (file != basename)
  .forEach (file)->
    model = sequelize.import path.join(__dirname, file)
    models[model.name] = model

Object.keys(models).forEach (modelName)->
  if "associate" in models[modelName]
    models[modelName].associate models

models.sequelize = sequelize
models.Sequelize = Sequelize

module.exports = models
