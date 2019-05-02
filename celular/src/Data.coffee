Requester = require "Utils/requester"
io = require 'socket.io-client'
class Data 
  
  
  @serverURL: process.env.SERVER_URL
  @socket: io("http://192.168.1.64:3000")
  
    
  
  @login: (data) =>
    Requester.request {
      type: 'POST'
      url: "#{@serverURL}/login"
      data: { user: { email: data.email, password: data.password } }

      done: (data, status, response) =>
        Backbone.$.ajaxSetup {
          headers: { 'Authorization': response.getResponseHeader('Authorization') }
        }
        @onRequestDone(data, "login")
      fail: (e) =>
        @onRequestError(e)
    }


  @getHome: (auth) =>
      Requester.request {
        type: 'get'
        dataType: 'json'
        url: "#{@serverURL}/home/index.json"
        done: (e) =>
          @onRequestDone(e, "user")
          cb?()
        fail: (e) =>
          @onRequestError(e)
      }
      null

  @onRequestDone: (data, section) =>
    switch section
      when 'login'
        @userData = data
    
    data
        

  @onRequestError: (e) ->
    console.log "something is wrong", e
    e

module.exports = Data
