zenti = angular.module("zenti", [
  "classy"
  "ngRoute"
])

zenti.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
  $locationProvider.html5Mode(true)
  $routeProvider.when("/", {templateUrl: "bundle/dashboard/views/dashboard.html", controller: "DashboardController"})
  $routeProvider.when("/contact", {templateUrl: "bundle/contact/views/contact.html", controller: "ContactController"})
  $routeProvider.otherwise({redirectTo: "/"})
]