Template = require("./ChangeToHear")
style = require("./ChangeToHearStyle")
Data = require 'Root/Data'
require 'Assets/instruments/next.png'
require 'Assets/instruments/tacha.png'

class ChangeToHearItemView extends Mn.View
    socket: Data.socket
    template: Template
    className: "ChangeToHear_view"
    ui:
        si: '.si'
        no: '.no'
    onRender:()=>
        @socket.on 'quitar',@quitar
        @socket.on 'aplauso',@aplauso
    events:
        'click @ui.si': 'onSi'
        'click @ui.no': 'onNo'
    onNo:=>
        console.log 'no'
        Bb.history.navigate "/microphone",trigger:true

    onSi:=>
        Bb.history.navigate "/chose",trigger:true
        @socket.emit 'quitar:evento'
        console.log  'si'
    constructor:()->
        super()
        $('body').addClass('bgblack').removeClass('bgBlue')
        $('#restOfUs').removeClass('onditas2')

module.exports = ChangeToHearItemView