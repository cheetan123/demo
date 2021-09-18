@ignore
Feature: Test API feature
  I want to test karate framework and run an api get call

  Scenario: Get the api userdetails
  
  	* def expected = read('result.json')
  	
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And match response == expected
    And match response.data.id == 2
    And match response.data.last_name != null
    * def job_id = response.data.job_id
    And match job_id == null
