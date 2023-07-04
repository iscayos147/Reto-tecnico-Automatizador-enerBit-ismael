Feature: update a meter
  As the administrator of the meters I want to update the data these


  Scenario: update a meter successfully
    * call read("../create_meter_post/create_meter.feature@CreateOk")
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters/" + idMeter
    And request {"serial": "654564544","connection_type": "directa","storage_system": "externo","condition": "usado","owner": "RF","location": "Almacen palmira","manufacturer": "yes","purchase": "2022-07-30 03:08:42.340514","i_max": 4512.654,"i_b": 10.5,"i_n": 654.5,"seals": 123.65}
    When method Patch
    Then status 200
    And match $.updated_at == '#notnull'
    And match $.id == '#notnull'


