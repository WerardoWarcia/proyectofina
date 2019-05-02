App = require 'Root/App'


app = new App()
app.start()


Backbone.history.on 'route', () ->
  console.log 'on route'
