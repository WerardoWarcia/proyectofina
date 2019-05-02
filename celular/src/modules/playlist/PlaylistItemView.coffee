Template = require("./Playlist")
style = require("./PlaylistStyle")
Data = require 'Root/Data'
class PlaylistItemView extends Mn.View
 socket: Data.socket
 template: Template
 className: "Playlist_view"

 ui: 
     cancion: '.rolon'
        

 events:
     'click @ui.cancion': 'onSong'
        
 onRender:=>
     @socket.on "cancion", @cancion
     
 cancion:()=>
     Backbone.history.navigate "/microphone",trigger:true
 onSong:(evt)=>
     
     cancion = $(evt.currentTarget).attr('id')
     console.log  cancion
     
     @socket.emit 'elige:cancion', cancion
        
        

module.exports = PlaylistItemView