'use strict'

module.exports = (app)->

  
  app.route '*', (req, res)->
    res.status(404).json {error: "Not Found"}
  return
