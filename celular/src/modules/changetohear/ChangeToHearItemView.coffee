Template = require("./ChangeToHear")
style = require("./ChangeToHearStyle")
io = require 'socket.io-client'
require 'Assets/instruments/next.png'
require 'Assets/instruments/tacha.png'

class ChangeToHearItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: "ChangeToHear_view"
    constructor:()->
        super()
        $('body').addClass('bgblack').removeClass('bgBlue')
        $('#restOfUs').removeClass('onditas2')

module.exports = ChangeToHearItemView