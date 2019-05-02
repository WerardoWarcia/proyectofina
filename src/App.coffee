Router = require 'Root/Router'
Data = require 'Root/Data'


class App extends Mn.Application
  data:Data
  

  onBeforeStart:(options)=>
    console.log 'before start'
    null

  onStart:=>
  
    new Router()
    if Bb.history
      Bb.history.start pushState: no
    null


module.exports = App
