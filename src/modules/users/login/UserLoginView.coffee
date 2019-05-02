Template = require 'Modules/users/login/UserLoginTemplate'
style = require 'Modules/users/login/styles'
Model = require "Modules/users/login/UserLoginModel"
Data = require "Root/Data"

class UserLoginView extends Mn.View
  template: Template
  className: "user_login_template"
  model: new Model()
  data: Data

  ui:
    user:'.user'
    pwd: '.pwd'
    login: '.login'
    error: '.error'

  events:
    "click @ui.login": 'onClick'

  onClick: () =>
    @model.fetch
        data: {user:{email: @model.get('email'), password: @model.get('password')}}
        type: 'POST'
        success: (model, data, response) ->
            console.log response.xhr.status
            if response.xhr.status is 200
                console.log model
                Backbone.history.navigate("/",{trigger:true})
        error: (model, response) =>
            if response.status is 401
                console.log 'model', response.responseJSON
                @ui.error.html response.responseJSON.error
    

    # console.log x.responseJSON

module.exports = UserLoginView
