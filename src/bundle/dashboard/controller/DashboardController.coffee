zenti.classy.controller
  name: 'DashboardController'
  inject: ['$scope', '$location', '$rootScope']
  init: ->
    console.log "Dashboard init"
    @$rootScope.title = "Dashboard"
    @$scope.distribName = "Ubuntu 14.04.1 LTS"
    @$scope.serverTime = "14.05.10 12:55:11"
    self = @
    updateTimeDisplay = ->
      dd = new Date()
      hh = dd.getHours()
      mm = dd.getMinutes()
      ss = dd.getSeconds()
      time = hh + ":" + mm + ":" + ss
      console.log time
      moment.locale('ru')
      self.$scope.serverTime = moment().format('D MMM YYYY hh:mm:ss')
      setTimeout updateTimeDisplay, 1000
    do updateTimeDisplay
    return
