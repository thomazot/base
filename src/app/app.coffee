app = angular.module('base', [
    'ngRoute'
])

app.config ($routeProvider) ->
    'use strict'
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
    };