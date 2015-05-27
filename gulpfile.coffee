gulp = require('gulp-help')(require('gulp'))
gutil = require('gulp-util')
nodemon = require('gulp-nodemon')

gulp.task 'serve', 'Start the node server in development mode, and restart on code change in server/', ->
  nodemon({
    script: 'server/app.coffee'
    ext: 'coffee'
  })
