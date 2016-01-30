# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require application
MainController = ($scope) ->
  $scope.test = 'Hello world! :)'
  return

app.controller('MainCtrl', MainController)
