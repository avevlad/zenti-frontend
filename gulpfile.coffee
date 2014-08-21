gulp = require('gulp')
$ = require('gulp-load-plugins')()
src = 'src'
out = 'public'

coffeeSrc = [src + '/*.coffee', src + '/**/*.coffee', src + '/**/**/*.coffee']
ejsSrc = [src + '/*.ejs', src + '/**/*.ejs', src + '/**/**/*.ejs']
compassSrc = [src + '/sass/*.sass', src + '/sass/**/*.sass']

gulp.task 'coffee', ->
  gulp
    .src(coffeeSrc)
    .pipe($.coffee(bare: true))
    .pipe(gulp.dest(out))
    .pipe($.connect.reload())

gulp.task 'ejs', ->
  gulp
    .src(ejsSrc)
    .pipe($.ejs())
    .pipe(gulp.dest(out))
    .pipe($.connect.reload())

gulp.task 'compass', ->
  gulp
    .src(compassSrc)
    .pipe $.compass(
      style: 'expanded'
      environment: 'production'
      css: out + '/css'
      sass: src + '/sass'
      image: out + '/images'
    )
    .pipe($.connect.reload())

gulp.task 'connect', ->
  $.connect.server
    root: "public"
    port: 1337
    livereload: true

gulp.task 'watch', ->
  gulp.watch coffeeSrc, ['coffee']
  gulp.watch ejsSrc, ['ejs']
  gulp.watch compassSrc, ['compass']

gulp.task 'default', ['connect', 'coffee', 'ejs', 'compass', 'watch']