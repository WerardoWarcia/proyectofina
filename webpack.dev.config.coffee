merge = require('webpack-merge')
common = require('./webpack.common.config')

config ={
  devtool: 'inline-source-map'
  }

module.exports = merge(common, config)
