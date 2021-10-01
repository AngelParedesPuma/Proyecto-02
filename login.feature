@MPV-appmovil @android  @Iphone

Feature: login
  Com cliente,
  quiero  appmobil con credenciales de usuario & pasword
  para asi poder financiar mi tarjeta de crédito
  Ruler: el cliente debe ser mayor a 18 años

Background:
Given: estoy en la pag de login
  #Primer escenario positivo
  Scenario: cuando realizo el login con credenciales validas de usiario  & pasword
  #  Given: estoy en la pag de login
    When: yo registro la cuenta de email  con el valor "aopp1710@gmail.com"
    And: yo ingreso el Pwd con valor "123456"
    And: doy click en el boton login
    Then: yo debia estar en la pag de home page
    And: el titulo de la pagina es "bienvenida"
    But: el boton de login no deberia de estar en la pagina de bienvenida
#segundo  escenario negativo
  Scenario: cuando las credenciales no son validas
  #  Given estoy en la pag  de login
    When yo registro la cuenta email con valor "Emailnovalido@gmail.com"
    And yo ingreso el Pwd con valor "clave.errada"
    And yo doy click en el boton login
    Then yo no puedo acceder a la pag de home page
    And el mensaje deberia de mostrar email o pwd invalido
      """
      Nombre: user
      MontoDisponible: 100000
      LineaDisponible: 100000     
      """
# scenario outline
  Scenario:
    When yo registro la mi email <correo>
    And yo ingreso el pwd <clave>
    And doy click en el boton login
    Then yo debia estar en la pag de home page
    And el titulo de la pagina es "bienvenida"
    But el boton login no deberia de estar en la pagina de bienvenida

  |correo             |clave |
  |aopp1710@gmail.com |123456|
