zenti.classy.controller
  name: 'DashboardController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    console.log "Dashboard init"
    @$rootScope.title = "Dashboard"