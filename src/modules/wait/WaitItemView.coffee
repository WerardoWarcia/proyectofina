Template = require("./Wait")
style = require("./WaitStyle")
Data = require 'Root/Data'
require 'Assets/instruments/disk.png'

class WaitItemView extends Mn.View
    socket: Data.socket
    template:Template
    className: 'wait_view'
    constructor:()->
        super()
        $('body').addClass('bgPrple').removeClass('bgBlue')
        $('#restOfUs').addClass('onditas1').removeClass('onditas2')

    onRender:=>
        @socket.on 'cancion', @cancion

    cancion:()=>
        Backbone.history.navigate "/reaction",trigger:true    
module.exports = WaitItemView
   
        