// Gulp and package
const {src, dest, parallel, series, watch} = require('gulp');

// Plugins
const autoprefixer = require('autoprefixer');
const concat = require('gulp-concat');
const cssnano = require('cssnano');
const pixrem = require('pixrem');
const plumber = require('gulp-plumber');
const postcss = require('gulp-postcss');
const rename = require('gulp-rename');
const npmdist = require('gulp-npm-dist');
const replace = require('gulp-replace');
const tailwindcss = require('@tailwindcss/postcss');

const paths = {
    baseDistAssets: "xeloro/static", // build assets directory
    baseSrcAssets: "xeloro/static",   // source assets directory
};

const plugins = function () {
  const out = paths.baseDistAssets + "/libs/";
  return src(npmdist(), { base: "./node_modules" })
    .pipe(rename(function (path) {
      path.dirname = path.dirname.replace(/\/dist/, '').replace(/\\dist/, '');
    }))
    .pipe(dest(out));
};

const processCss = [
    tailwindcss(),
    autoprefixer(), // adds vendor prefixes
    pixrem(), // add fallbacks for rem units
];

const minifyCss = [
    cssnano({preset: 'default'}), // minify result
];

const styles = function () {
    const out = paths.baseDistAssets + "/build/";

    return src(paths.baseSrcAssets + "/css/app.css")
        .pipe(plumber()) // Checks for errors
        .pipe(postcss(processCss))
        // .pipe(dest(out))
        .pipe(rename({suffix: '.min'}))
        .pipe(postcss(minifyCss)) // Minifies the result
        .pipe(dest(out));
};

const watchFiles = function () {
    watch([paths.baseSrcAssets + "/css/**/*.css", "xeloro/templates/**/*.html"], series(styles));
}


// Production Tasks
exports.default = series(
    plugins,
    parallel(styles),
    parallel(watchFiles)
);

// Build Tasks
exports.build = series(
    plugins,
    parallel(styles),
);
