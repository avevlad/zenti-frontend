zenti.classy.controller
  name: 'DashboardController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    console.log "Dashboard init"
    @$rootScope.title = "Dashboard"
    @$scope.distribName = "Ubuntu 14.04.1 LTS"
    @$scope.serverTime = ""
    @time()

  time: ->
    self = @
    updateTimeDisplay = ->
      moment.locale('ru')
      newTime = moment().format('D MMM YYYY hh:mm:ss')
      self.$scope.$apply ->
        self.$scope.serverTime = newTime
      setTimeout updateTimeDisplay, 1000
    do updateTimeDisplay
    return
