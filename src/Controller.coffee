Radio            = require('backbone.radio')
Data             = require 'Root/Data'
HomeView = require 'Modules/home/IndexView'
LoginView = require 'Modules/users/login/UserLoginView'
MobileLayout = require 'Modules/share/MobileLayout'
Login = require 'Modules/login/loginItemView'
Chose = require 'Modules/chose/ChoseItemView'
Queue = require 'Modules/queue/QueueItemView'
Footer = require 'Modules/footer/FooterItemView'
Footer2 = require 'Modules/footer/Footer2ItemView'
Footer3 = require 'Modules/footer/Footer3ItemView'
Footer4 = require 'Modules/footer/Footer4ItemView'
ChoseGenre = require 'Modules/choseGenre/ChoseGenreItemView'
Playlist = require 'Modules/playlist/PlaylistItemView'
Countdown = require 'Modules/countdown/CountdownItemView'
Microphone = require 'Modules/microphone/MicrophoneItemView'
Score = require 'Modules/score/ScoreItemView'
Wait = require 'Modules/wait/WaitItemView'
Reaction = require 'Modules/reaction/ReactionItemView'
Applauses = require 'Modules/applauses/ApplausesItemView'
Changetosing = require 'Modules/changetosing/ChangeToSingItemView'
Changetohear = require 'Modules/changetohear/ChangeToHearItemView'

class Controller
  radio: Radio.channel('basic')
  data: Data

  constructor: ->
    @layout = new MobileLayout()
    @layout.render()
    $('#restOfUs').html(@layout.$el)
  login: =>
    @layout.getRegion('content').show(new Login)
    @layout.getRegion('footer').empty()
  chose: =>
    @layout.getRegion('content').show(new Chose)
    @layout.getRegion('footer').empty()
  queue: =>
    @layout.getRegion('content').show(new Queue)
    @layout.getRegion('footer').show(new Footer)
  choseGenre: =>
    @layout.getRegion('content').show(new ChoseGenre)
    @layout.getRegion('footer').show(new Footer2)
  playlist:=>
    @layout.getRegion('content').show(new Playlist)
    @layout.getRegion('footer').empty()
  countdown:=>
    @layout.getRegion('content').show(new Countdown)
    @layout.getRegion('footer').empty()
  microphone:=>
    @layout.getRegion('content').show(new Microphone)
    @layout.getRegion('footer').empty()
  score:=>
    @layout.getRegion('content').show(new Score)
    @layout.getRegion('footer').show(new Footer3)
  wait:=>
    @layout.getRegion('content').show(new Wait)
    @layout.getRegion('footer').show(new Footer4)
  reaction:=>
    @layout.getRegion('content').show(new Reaction)
    @layout.getRegion('footer').show(new Footer4)
  applauses:=>
    @layout.getRegion('content').show(new Applauses)
    @layout.getRegion('footer').show(new Footer4)
  changetosing:=>
    @layout.getRegion('content').show(new Changetosing)
    @layout.getRegion('footer').empty()
  changetohear:=>
    @layout.getRegion('content').show(new Changetohear)
    @layout.getRegion('footer').empty()



  



  index: ->

    layout = new HomeView()
    layout.render()
    $('#restOfUs').html(layout.$el)
    null


module.exports = Controller
