app = angular.module('base', [
    'ngRoute'
])

app.config ($routeProvider,$locationProvider) ->
    'use strict'

    $locationProvider.html5Mode(true)

    $routeProvider
    .when '/' , {
        controller: 'HomeCtrl'
        templateUrl: '/views/home.html'
    }
    .when '/404', {
        controller: '404Ctrl',
        templateUrl: '/views/404.html'
    }
    .otherwise {
        redirectTo: '/404'
    }

app.controller 'HomeCtrl', ($scope) ->
    'use strict'