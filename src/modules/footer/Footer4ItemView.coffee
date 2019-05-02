Template = require("./Footer4")
style = require("./Footer4Style")
io = require 'socket.io-client'
require 'Assets/instruments/manita.png'

class Footer4ItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'footer4_view'
    ui:
        changebtnSing: '.changeToSingbtn'
        changebtnHear: '.changeToHearbtn'

    events:
        'click @ui.changebtnSing': 'onChangeToSing'
        'click @ui.changebtnHear': 'onChangeToHear'

    onChangeToSing:=>
        Bb.history.navigate '/choseGenre', trigger:true
        console.log 'voy a cantar'
        $('body').addClass('bgBlue').removeClass('bgPrple')

    onChangeToHear:=>
        Bb.history.navigate '/wait', trigger:true
        console.log 'Quiero escuchar'
module.exports = Footer4ItemView