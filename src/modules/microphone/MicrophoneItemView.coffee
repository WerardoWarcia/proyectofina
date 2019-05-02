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
 initialize:=>
    $('body').removeClass('bgblack').addClass('bgBlue')
    $('body').removeClass('bgprlpe').addClass('bgBlue')
        
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
      Bb.history.navigate "/changetohear",trigger:true
      console.log 'jaja'
      #quite esto para poner la otra pantalla, arturo sonso

      #$( ".advertencia" ).empty()
      #$( ".advertencia" ).append('<div class="advertenciaa"> Seguro que quieres quitar <br><button class= "si">si</button><button class= "no">no</button></div>')
      #$( ".advertenciaa" ).css({"width": "100%", "height": "100%", "background": "linear-gradient(150.64deg, #5737FC 0%, #40F7F9 100%)", "opacity": "1"})

 onNo:=>
     $( ".advertencia" ).empty()

 onSi:=>
    #lo movi a la pantalla que agregue
     @socket.emit 'quitar:evento'

 
   
      


    
module.exports = MicrophoneItemView
