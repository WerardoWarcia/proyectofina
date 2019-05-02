Template = require './Mobile'
Style = require './style'
class MobileLayout extends Mn.View
    template:Template
    className: 'layoutView'
    regions:
        
        content:'.content'
        footer:'.footer'
        

module.exports = MobileLayout