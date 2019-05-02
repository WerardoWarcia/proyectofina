Template = require("./ChoseGenre")
style =require("./ChoseGenreStyle")
Data = require 'Root/Data'
require 'Assets/instruments/guitar.png'
require 'Assets/instruments/pianoguitar.png'
require 'Assets/instruments/acordeon.png'
require 'Assets/instruments/banjo.png'
require 'Assets/instruments/acousticguitar.png'
require 'Assets/instruments/mezcladora.png'


class ChoseGenreItemView extends Mn.View
    socket: Data.socket
    template: Template
    className: "ChoseGenre_view"
    ui:
        choseMusicIcon:  '.musicIcon'
        choseMusicIcon2: '.musicIcon2'
        choseMusicIcon3: '.musicIcon3'
        choseMusicIcon4: '.musicIcon4'
        choseMusicIcon5: '.musicIcon5'
        choseMusicIcon6: '.musicIcon6'
    events:
        'click @ui.choseMusicIcon': 'onchoseMusicIcon'
        'click @ui.choseMusicIcon2': 'onchoseMusicIcon2'
        'click @ui.choseMusicIcon3': 'onchoseMusicIcon3'
        'click @ui.choseMusicIcon4': 'onchoseMusicIcon4'
        'click @ui.choseMusicIcon5': 'onchoseMusicIcon5'
        'click @ui.choseMusicIcon6': 'onchoseMusicIcon6'
    onRender:=>
      @socket.on "cancion", @cancion
     
    cancion:()=>
      Backbone.history.navigate "/microphone",trigger:true
      
    onchoseMusicIcon:=>
        Bb.history.navigate '/playlist', trigger:true
        console.log 'genero musical'
    onchoseMusicIcon2:=>
        Bb.history.navigate '/playlist', trigger:true
        console.log 'click'
    onchoseMusicIcon3:=>
        Bb.history.navigate '/playlist', trigger:true
    onchoseMusicIcon4:=>
        Bb.history.navigate '/playlist', trigger:true
    onchoseMusicIcon5:=>
        Bb.history.navigate '/playlist', trigger:true
    onchoseMusicIcon6:=>
        Bb.history.navigate '/playlist', trigger:true


        

module.exports = ChoseGenreItemView