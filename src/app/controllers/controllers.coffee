app = angular.module('base', [
    'ngRoute'
])

app.controller 'HomeCtrl', ($rootScope, $location) ->
    $rootScope.activetab = $location.path();