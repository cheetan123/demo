Feature: Test POST API feature
  I want to test karate framework and run an api post call

	Background: hit the base url
		* def payload = read('/data/payload.json')
		* headers {Content-Type : 'application/json'} 
		* url 'https://reqres.in/api/users'

  Scenario: Post the api and create user
    When request payload
    And method POST  
    Then status 201
    And print response
    