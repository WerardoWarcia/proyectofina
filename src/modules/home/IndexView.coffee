Template = require 'Modules/home/IndexTemplate'
Radio    = require('backbone.radio')
Data     = require 'Root/Data'
UserView = require 'Modules/users/UserIndexView'

class IndexView extends Mn.View
  template: Template
  tagName: 'main'
  className: "container"
  radio: Radio.channel('basic')

  regions: {
    header: '.mainHeader'
    main: '.mainSection'
    footer: '.mainFooter'
    }

  onRender: () ->
    @getRegion('header').show(new UserView)
    console.log 'start IndexView'
    null

module.exports = IndexView
