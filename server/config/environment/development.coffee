'use strict'

module.exports =
  db:
    username: "postgres"
    password: ""
    name: "my_app"
    host: "127.0.0.1"
    options:
      dialect: "postgres"
      pool:
        max: 5
        min: 0
        idle: 10000
