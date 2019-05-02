Controller = require 'Root/Controller'


class Router extends Mn.AppRouter
  controller: new Controller
  appRoutes :
    '':'login'
    'login': 'login'
    'chose': 'chose'
    'queue': 'queue'
    'choseGenre': 'choseGenre'
    'playlist': 'playlist'
    'countdown': 'countdown'
    'microphone': 'microphone'
    'score': 'score'
    'wait': 'wait'
    'reaction': 'reaction'
    'applauses': 'applauses'
    'changetosing': 'changetosing'
    'changetohear': 'changetohear'

module.exports = Router
