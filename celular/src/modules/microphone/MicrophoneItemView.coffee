Template = require("./Microphone")
style = require("./MicrophoneStyle")
Data = require 'Root/Data'
require 'Assets/instruments/bigmic.png'

class MicrophoneItemView extends Mn.View
 socket: Data.socket
 template: Template
 clasName: 'microphone_view'

 ui: 
     quitar: '.quit'
     si: '.si'
     no: '.no'
 #initialize:=>
 #   $('body').removeClass('bgBlue').addClass('bgBlue')
        
 onRender:()=>
     @socket.on 'quitar',@quitar
     @socket.on 'aplauso',@aplauso
     
 
 events:
     'click @ui.quitar': 'onQuit'
     'click @ui.si': 'onSi'
     'click @ui.no': 'onNo'
 aplauso:()=>
      Backbone.history.navigate "/microphone",trigger:true     
 quitar:()=>
     Backbone.history.navigate "/chose",trigger:true

 onQuit:=>
      $( ".advertencia" ).empty()
      $( ".advertencia" ).append('<div class="advertenciaa"> Seguro que quieres quitar <br><button class= "si">si</button><button class= "no">no</button></div>')
      $( ".advertenciaa" ).css({"width": "100%", "height": "100%", "background-color": "grey", "opacity": "0.9"})

 onNo:=>
     $( ".advertencia" ).empty()

 onSi:=>
     @socket.emit 'quitar:evento'
      


    
module.exports = MicrophoneItemView
