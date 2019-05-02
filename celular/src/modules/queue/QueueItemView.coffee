Template = require("./Queue")
style = require("./QueueStyle")
io = require 'socket.io-client'
class QueueItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'queue_view'
    


module.exports = QueueItemView