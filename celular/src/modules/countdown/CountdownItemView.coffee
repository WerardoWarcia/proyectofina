Template = require("./Countdown")
style = require("./CountdownStyle")
io = require 'socket.io-client'

class CountdownItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'countdown_view'
    

module.exports = CountdownItemView