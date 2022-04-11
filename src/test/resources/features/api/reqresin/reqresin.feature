Feature: Reqresin

  @GET-users @positive
  Scenario: Success GET users
    When user send GET Users request to reqresin
    Then response status code should be 200
    And response structure should match json schema "users.json"

  @POST-success @positive
  Scenario: Success POST register
    When user send POST register request to reqresin
    Then response status code should be 200
    And response structure should match json schema "register.json"

  @POST-unsuccess @negatif
  Scenario: Unsuccess POST register
    When user send POST invalid register request to reqresin
    Then response status code should be 400
    And response structure should match json schema "unsuccess-register.json"

  @POST-success @positive
  Scenario: Success POST login
    When user send POST login request to reqresin
    Then response status code should be 200
    And response structure should match json schema "login.json"

  @PUT-update @positive
  Scenario: Success PUT update
    When user send PUT Update request to reqresin
    Then response status code should be 200
    And response structure should match json schema "update-users.json"

   @DELETE-delete @positive
  Scenario: Success DELETE delete
    When user send DELETE delete request to reqresin
    Then response status code should be 204