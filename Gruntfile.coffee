module.exports = (grunt) ->

  grunt.initConfig
    coffee:
      staging:
        options:
          sourceMap: true
          bare: true
          join: true
        files:
          "./dist/common.js": ["./src/**/*.coffee", "!./src/**/*.src.coffee"]



  grunt.registerTask 'dostuff', 'Run a production build', () ->
    console.log 'dostuff has been run'
    grunt.task.run 'coffee'


  grunt.loadNpmTasks 'grunt-contrib-coffee'
