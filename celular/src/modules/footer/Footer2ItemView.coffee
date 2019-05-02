Template = require("./Footer2")
style = require("./Footer2Style")
io = require 'socket.io-client'

require "Assets/instruments/atras.png"

class Footer2ItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'footer2_view'
    ui:
        back: '.back'
    events:
        'click @ui.back': 'onBack'
    onBack:=>
        Bb.history.navigate '/chose', trigger:true
        console.log 'atras'
module.exports = Footer2ItemView