var gulp = require('gulp');
var tar = require('gulp-tar');
var mergeStream = require('merge-stream');

gulp.task('default', function () {
    var files = gulp.src('src/files/**').pipe(tar('files.tar'));
    var templates = gulp.src('src/acptemplates/*.tpl').pipe(tar('acptemplates.tar'));

    mergeStream(gulp.src(['src/**/*', '!src/files{,/**}', '!src/acptemplates{,/**}']))
        .add(files)
        .add(templates)
        .pipe(tar('de.codequake.wcf.acp.index.news.tar'))
        .pipe(gulp.dest('./'));
});
