Template = require("./Score")
style = require("./ScoreStyle")
io = require 'socket.io-client'
require 'Assets/instruments/hands.png'

class ScoreItemView extends Mn.View
    socket: io("http://localhost:3000")
    template:Template
    className: 'score_view'

module.exports = ScoreItemView