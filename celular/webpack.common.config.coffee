HtmlWebpackPlugin = require('html-webpack-plugin')
Webpack = require('webpack')
path = require('path')
ExtractTextPlugin = require('extract-text-webpack-plugin')
Dotenv = require('dotenv-webpack')


config =
  entry: ['./src/main']
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'bundle.js'
  module: rules: [
    {
      test: /\.(eot|svg|ttf|woff(2)?)(\?v=\d+\.\d+\.\d+)?/
      loader: 'url-loader?limit=100000'
    }
    {
      test: /\.(png|jp(e*)g|gif)$/
      use:
        loader: 'url-loader'
        options:
            limit: 100
            name: 'images/[name].[ext]'
    }
    {
      test: /\.coffee$/
      loader: "coffee-loader"
      options: transpile: presets: ['env']
    }
    {
      test: /\.hbs$/
      loader: "handlebars-loader"
    }
    {
      test:/\.(s*)css$/
      use: ExtractTextPlugin.extract
        fallback: 'style-loader'
        use: ['css-loader','sass-loader']
    }
  ]
  resolve:
    extensions: [".coffee",".js",".hbs",".scss",'css']
    alias: {
      Utils: path.resolve(__dirname, 'src/utils')
      Assets: path.resolve(__dirname, 'src/assets')
      Modules: path.resolve(__dirname, 'src/modules')
      Root: path.resolve(__dirname, 'src/')
    }
  plugins: [
    new Dotenv()
    new ExtractTextPlugin( { filename:'app.bundle.css' } )
    new HtmlWebpackPlugin(
      {
        title: 'rest Of US',
        template: 'src/index.hbs'
      }
    )
    new Webpack.ProvidePlugin({
        _: 'underscore'
        $: 'jquery'
        jQuery: 'jquery'
        Backbone: 'backbone'
        Bb: 'backbone'
        Marionette: 'backbone.marionette'
        Mn: 'backbone.marionette'
      })
  ]



module.exports = config
