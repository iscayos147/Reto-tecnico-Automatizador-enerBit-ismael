Feature: delete a meter
  I, as a meter admin, want to delete a meter

  Scenario: delete a meter using its id
    * call read("../read_meter_get/read_meter.feature@ReadIdOk")
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters/" + idRead
    And def idDelete = idRead
    When method Delete
    Then status 202
    Given url "https://ops.enerbit.dev/learning/api/v1/meters/" + idDelete
    When method get
    Then status 404