merge = require('webpack-merge')
common = require('./webpack.common.config')
UglifyJsPlugin = require('uglifyjs-webpack-plugin')

config = {
  devtool: 'source-map'
  plugins: [
    new UglifyJsPlugin
      sourceMap: true
      extractComments:true
      uglifyOptions:
        mangle:
          toplevel: true
        compress:
          drop_console:true
  ]
}
module.exports = merge(common, config)
