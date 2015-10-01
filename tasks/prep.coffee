module.exports = (grunt) ->
  grunt.run.tasks('npm-install' +
    ':grunt-load-options' +
    ':load-grunt-tasks' +
    ':grunt-npm-install' +
    ':grunt-config-coffee'
