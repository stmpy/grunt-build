module.exports = (grunt) ->
    console.log 'prep loading'
    grunt.registerTask 'prep', () ->
      console.log ' >> Installing NPM Modules'

      # Doesn't allow --save-dev ... so wastes my time ...
      # npm install --save-dev grunt-npm-install (when the time is right)
      # grunt.task.run 'npm-install' +
      #   ':bower' +
      #   ':grunt-contrib-coffee'

      exec = require('child_process').exec;
      done = this.async();

      # Install NPM dev dependencies
      exec ('npm install --save-dev \\' +
        'bower@"1.5.*" \\' +
        'grunt-contrib-coffee@"0.*" \\' +
        'grunt-contrib-watch@"0.6.*" \\' +
        'grunt-bump@"0.6.*"'

      ), (err, stdout, stderr) ->
          console.log stderr if stderr?
          console.log stdout
          done()
