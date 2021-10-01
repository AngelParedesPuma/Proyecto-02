@MPV-appmovil @android  @Iphone

Feature: transferir dinero
  Como cliente de IBK
  Quiero transferir dinero entre mis cuentas
  Para financiar mi tarjeta de crédito
  Background:
  Given el cliente esta en la pag transferir
  #Primer escenario
  @SRT - 2021 optimizacionmovil 
  Scenario: cuando el cliente tiene disponible
  #  Given el cliente esta en la pag transferir
    And el cliente tiene cuenta bancaria con tipo de moneda soles
    And  el ciente tiene dinero disponible en cuenta bancaria
    When el client solicita transferir dinero entre sus cuenta
    Then  e dinero es transferido a la segunda cuenta bancaria
  #Primer escenario  no tiene disponible
  Scenario: cuando el cliente no  tiene disponible
  #  Given el cliente esta en la pag transferir
    And el cliente tiene cuenta bancaria con tipo de moneda soles
    And  el ciente no tiene dinero disponible en cuenta bancaria
    When el client solicita transferir dinero entre sus cuenta
    Then  el dinero no es transferido a la segunda cuenta bancaria
    And el mensaje debera ser no cuenta con saldo disponible
# scenario outline
  Scenario: transfiere dinero
    Given la cuenta tiene <dinerodisponibleprimeracuenta>
    And el cliente tiene  cuenta con tipo <moneda>
    When el cliente solicita transferir dinero <dinerotransferido>
    Then el dinero tansferido a la seg moneda <mensaje>
  Examples:
  |dinerodisponibleprimeracuenta |moneda |dinerotransferido |mensaje        |
  |1000.00                       |soles  |100.00            |trans con exito|
