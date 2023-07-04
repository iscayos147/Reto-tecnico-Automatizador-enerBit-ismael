Feature: create a meter
  As a meter administrator I want to register new meters to the system

  @CreateOk
  Scenario: create a meter successfully
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters"
    And request {"serial": "654564544","connection_type": "directa","storage_system": "externo","condition": "usado","owner": "RF","location": "Almacen palmira","manufacturer": "yes","purchase": "2022-07-30 03:08:42.340514","i_max": 6345.654,"i_b": 21.5,"i_n": 876.5,"seals": 545.65}
    When method Post
    Then status 201
    And def idMeter = $.id

  Scenario: attempting to create a meter incorrectly
    Given url  "https://ops.enerbit.dev/learning/api/v1/meters"
    And request {"serial": "342423423","connection_type": "directa","storage_system": "interno","condition": "nuevo","owner": "RF","location": "Almacen palmira","manufacturer": "yes","purchase": "2022-07-28 03:08:49.340514","i_max": 6345.654,"i_b": 21.5,"i_n": 876.5,"seals": "adasd"}
    When method Post
    Then status 422