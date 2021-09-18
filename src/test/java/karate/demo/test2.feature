Feature: Test API feature
  I want to test karate framework and run an api get call

	Background: base steps
		* url 'https://reqres.in/api/users'
		* param page = 1
		* def expected = read('result.json')
	
  Scenario: Get the api userdetails 
    When method GET
    Then status 200
    * def data = response.data
    And print response
    * def myFun = 
    """
    	function(arg) {
    		for(i=0;i<arg.length;i++) {
    			if(arg[i].id == 3) {
    				return arg[i]
    			}
    		}
    	}
    """
    * def userData = call myFun data
    And print 'user----> ', userData
    And print 'test ---->>> test'
    
