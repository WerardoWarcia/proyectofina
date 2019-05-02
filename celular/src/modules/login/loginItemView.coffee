Template = require("./login")
style = require("./loginstyle")
Data = require 'Root/Data'
require "Assets/logoAndWaves/logo.png"
require 'Assets/logoAndWaves/ondas2.png'

class LoginItemView extends Mn.View
    socket: Data.socket
    template: Template
    className: 'login_view'

    ui:
        input: '.nickname'
        button: '.startbtn'

        
    events:
        'click @ui.button': 'onClick'
        'click @ui.clap': 'onClap'

    onRender:=>
        console.log @socket
        
    onClick:=>
        console.log 'click', @ui.input.val()
        @socket.emit 'registered', 'usuario registrado'
        Backbone.history.navigate "/chose",trigger:true
        
        


module.exports = LoginItemView