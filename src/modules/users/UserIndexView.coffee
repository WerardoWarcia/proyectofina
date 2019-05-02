Template = require 'Modules/users/UserIndexTemplate'
Model = require 'Modules/users/UserModel'
userStyle = require 'Modules/users/styles'

class UserIndexTemplate extends Mn.View
  template: Template
  className: "user_index_template"
  model: new Model()


  
  



module.exports = UserIndexTemplate
