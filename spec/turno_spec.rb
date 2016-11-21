require 'turno'

describe Turno do

  it "deberia empezar el jugador1" do
      turno = Turno.new
      jugador = turno.de_quien_es_el_turno?
      jugador.nombre_jugador.should=="jugador1"
  end

  it "deberia cambiar turno de jugador1 a jugador2" do
    turno = Turno.new
    segundo_turno = turno.cambiar_turno  #jugador1
    segundo_turno.nombre_jugador.should=="jugador2"
  end
end
