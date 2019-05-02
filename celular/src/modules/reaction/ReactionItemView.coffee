Template = require("./Reaction")
style = require("./ReactionStyle")
Data = require 'Root/Data'

class ReactionItemView extends Mn.View
    socket: Data.socket
    template:Template
    className: 'reaction_view'
    ui:
        react: '.reaction'
        
    events:
        'click @ui.react': 'OnReact'
     
    onRender:()=>
     @socket.on 'quitar',@quitar
     @socket.on 'aplauso',@aplauso

    aplauso:()=>
     Backbone.history.navigate "/applauses",trigger:true  

    quitar:()=>
     Backbone.history.navigate "/chose",trigger:true 
    constructor:()->
        super()
        $('body').addClass('bgPrple').removeClass('bgBlue')

    OnReact:(evt)=>
     reaccion = $(evt.currentTarget).attr('id')
     console.log  reaccion
     @socket.emit "reaction:evento",reaccion
        
    


module.exports = ReactionItemView
        