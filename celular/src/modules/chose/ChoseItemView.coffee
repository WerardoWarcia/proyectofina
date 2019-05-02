Template = require("./chose")
style = require("./ChoseStyle")
Data = require 'Root/Data'
require "Assets/logoAndWaves/logo.png"
require "Assets/instruments/mic.png"
require "Assets/logoAndWaves/ondas2.png"

class ChoseItemView extends Mn.View
    socket: Data.socket
    isNomEvt: false
    template: Template
    className: 'Chose_view'
    isCancion: false
    ui: 
        manitas: '.manitas'
        microfono: '.microfono'

    events:
        'click @ui.manitas': 'onSing'
        'click @ui.microfono': 'onHear'

    onRender:=>
        @socket.on 'nombre', @nombre
        @socket.on 'espere', @espere
        @socket.on 'cancion', @cancion
        @socket.on 'cantando', @cantando

    cancion:()=>
      @isCancion= true

    cantando:(canto)=>
      @isCancion=canto
      console.log @isCancion
    
    nombre:(evento)=>
        
        @isNomEvt= evento  
    espere:(evento)=>
        
        @isNomEvt= evento      

    initialize:=>
        @socket.emit 'cantando:evento'
        @socket.emit 'nombre:evento'
        $('body').removeClass('bgPrple').addClass('bgBlue')
        $('#restOfUs').removeClass('onditas1').addClass('onditas2')
       
   
    onSing:=>
     @socket.emit "nombre:evento"
     console.log @isNomEvt
     if @isNomEvt == true && @isCancion == true
            Backbone.history.navigate "/reaction",trigger:true
     if @isNomEvt == true && @isCancion == false
            Backbone.history.navigate "/wait",trigger:true
            
            console.log 'Quiero cantar'
     else
            $('.evento').empty()
            $( ".evento" ).append('Ponle nombre al evento')

        
    onHear:=>
     
     if @isCancion == true && @isNomEvt == true
           Backbone.history.navigate "/microphone",trigger:true

     if @isNomEvt == true && @isCancion == false
            Backbone.history.navigate "/choseGenre",trigger:true
            console.log 'Quiero escuchar'
     else
            $('.evento').empty()
            $( ".evento" ).append('Ponle nombre al evento')
       
            
        
module.exports = ChoseItemView