Feature: Test API feature
  I want to test karate framework and run an api get call

  Scenario: Get the api userdetails
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
