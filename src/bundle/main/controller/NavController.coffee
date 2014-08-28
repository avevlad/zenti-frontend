zenti.classy.controller
  name: 'NavController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
#    console.log "NavController init"

  getClass: (path) ->
#    console.log "call getClass (link menu) method"
    return "active" if path is @$location.path()