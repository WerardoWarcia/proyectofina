Template = require("./Footer3")
style = require("./Footer3Style")
io = require 'socket.io-client'
require 'Assets/instruments/next.png'

class Footer3ItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'footer3_view'
    ui:
        back: '.back'
        next: '.next'
    events:
        'click @ui.back': 'onBack'
        'click @ui.next': 'onNext'
    onBack:=>
        Bb.history.navigate '/choseGenre', trigger:true
        console.log 'atras'
    onNext:=>
        Bb.history.navigate '/queue', trigger:true
        console.log 'siguiente'

module.exports = Footer3ItemView
