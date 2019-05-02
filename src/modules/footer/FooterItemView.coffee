Template = require("./Footer")
style = require("./FooterStyle")
io = require 'socket.io-client'

class FooterItemView extends Mn.View
    socket: io("http://localhost:3000")
    template: Template
    className: 'footer_view'
    ui:
        changebtnSing: '.changeToSingbtn'
        changebtnHear: '.changeToHearbtn'
        addSong:'.addSongbtn'
    events:
        'click @ui.changebtnSing': 'onChangeToSing'
        'click @ui.changebtnHear': 'onChangeToHear'
        'click @ui.addSong': 'onaddSong'
    onChangeToSing:=>
        console.log 'voy a cantar'
    onChangeToHear:=>
        console.log 'Quiero escuchar'
    onaddSong:=>
        Bb.history.navigate '/choseGenre',trigger:true
        console.log 'QUIERO AGREGAR UNA CANCIÓN'

module.exports = FooterItemView
