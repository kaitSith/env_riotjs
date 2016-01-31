const gulp = require('gulp');
const browserSync = require('browser-sync');
const browserify = require('browserify');
const riotify = require('riotify');
const source = require('vinyl-source-stream');

gulp.task('browserSync', ()=>{
  browserSync({
  	server: {
  	  baseDir: '../'
  	}
  });
});

gulp.task('reload', ()=>{
  browserSync.reload();
})

gulp.task('riot', ()=>{
  return browserify({
    debug: true,
    entries: ['js/script']
  }).transform([riotify])
    .bundle()
    .pipe(source('script.bundle.js'))
    .pipe(gulp.dest('../assets/js/'));
});

gulp.task('concat', ()=>{
  return browserify({
  	debug: true,
  	entries: ['js/main']
  }).transform([riotify])
    .bundle()
    .pipe(source('main.bundle.js'))
    .pipe(gulp.dest('../assets/js/'));
});

gulp.task('watch', ()=>{
  gulp.watch([
  	'js/**/**'
  	], ['concat','riot','reload']
  );	
})

gulp.task('dev', ['riot', 'browserSync', 'watch']);
gulp.task('default', ['concat', 'browserSync', 'watch']);