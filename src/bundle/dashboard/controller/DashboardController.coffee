zenti.classy.controller
  name: 'DashboardController'
  inject: ['$scope', '$location', '$rootScope', '$http']
  init: ->
    moment.locale('ru')

    @$rootScope.title = "Dashboard"
    
    @$http.get("/api/server/1/").success (responce) =>
      if responce.success
        @$scope.distribName = responce.server.os.title

        console.log responce


    @time()

  time: ->
    updateTimeDisplay = =>
      newTime = moment().format('D MMM YYYY hh:mm:ss')
      return if @.$scope.$$phase
      @.$scope.$apply =>
        @.$scope.serverTime = newTime
    do updateTimeDisplay
    setInterval updateTimeDisplay, 1000
    return

