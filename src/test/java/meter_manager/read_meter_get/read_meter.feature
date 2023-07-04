Feature: get an exact meter
  As a meter administrator I want to obtain meters according to a search parameter


  Scenario: get meters according to a search parameter
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters" + "?location=Almacen%20palmira"
    When method Get
    Then status 200

    @ReadIdOk
  Scenario: consult meter by id
    * call read("../create_meter_post/create_meter.feature@CreateOk")
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters/" + idMeter
    When method Get
    Then status 200
      And def idRead = idMeter
    And match $.id == idMeter