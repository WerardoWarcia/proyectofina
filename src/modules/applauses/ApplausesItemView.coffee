Template = require("./Applauses")
style = require("./ApplausesStyle")
Data = require 'Root/Data'
class ApplausesItemView extends Mn.View 
    socket: Data.socket
    template: Template
    className: 'applauses_view'
    claps: 0
    ui:
        aplausos: '.aplausos'
        
    events:
        'click @ui.aplausos': 'OnAplausos'
     
    onRender:()=>
     @socket.on 'quitar',@quitar
     @socket.on 'tiempo',@tiempo
     
 
    tiempo:()=>
     @socket.emit 'total:evento', @claps
    quitar:()=>
     Backbone.history.navigate "/chose",trigger:true 
    
    OnAplausos:(evt)=>
      @claps += 1
      @socket.emit 'clap:evento'
      console.log @claps 
     

module.exports = ApplausesItemView
        