zenti.classy.controller
  name: 'ContactController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    console.log "ContactController init"
    @$rootScope.title = "Contact"