'use strict'

_ = require('lodash')

all = {
  env: process.env.NODE_ENV
  port: process.env.PORT || 3000
}

module.exports = _.merge all, require("./#{process.env.NODE_ENV}.coffee")
