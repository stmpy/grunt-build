 module.exports =
  staging:
    options:
      sourceMap: true
      bare: true
      join: true

    files:
      "./dist/common.js": ["./src/**/*.coffee", "!.src/**/*.src.coffee"]
