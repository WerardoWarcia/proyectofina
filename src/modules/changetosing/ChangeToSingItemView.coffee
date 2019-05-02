Template = require("./ChangeToSing")
style = require("./ChangeToSingStyle")
io = require 'socket.io-client'

class ChangeToSingItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: "ChangeToSing_view"

module.exports = ChangeToSingItemView
        