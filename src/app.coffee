zenti = angular.module("zenti", [
  "classy"
  "ngRoute"
])

zenti.config ["$routeProvider", "$locationProvider", ($routeProvider, $locationProvider) ->
#  $locationProvider.html5Mode(true)
  $routeProvider.when("/", {templateUrl: "bundle/main/views/main.html", controller: "MainController"})
  $routeProvider.when("/contact", {templateUrl: "bundle/contact/views/contact.html", controller: "ContactController"})
  $routeProvider.otherwise({redirectTo: "/"})
]