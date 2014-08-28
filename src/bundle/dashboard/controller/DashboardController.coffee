zenti.classy.controller
  name: 'DashboardController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    moment.locale('ru')
    @$rootScope.title = "Dashboard"
    @$scope.distribName = "Ubuntu 14.04.1 LTS"
    @$scope.serverTime = moment().format('D MMM YYYY hh:mm:ss')
    @time()

  time: ->
    self = @
    updateTimeDisplay = ->
      newTime = moment().format('D MMM YYYY hh:mm:ss')
      return if self.$scope.$$phase
      self.$scope.$apply ->
        self.$scope.serverTime = newTime
    do updateTimeDisplay
    setInterval updateTimeDisplay, 1000
    return

