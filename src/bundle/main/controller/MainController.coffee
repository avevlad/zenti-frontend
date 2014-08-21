zenti.classy.controller
  name: 'MainController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    console.log "MainController init"
    @$rootScope.title = "Main"