require 'turno'

describe Turno do

  it "deberia devolver al jugador1 por el turno incial" do
      turno = Turno.new
      jugador = turno.de_quien_es_turno?
      jugador.nombre_jugador.should=="jugador1"
  end

  it "deberia devolver al jugador2 por ser su siguiente turno" do
    turno = Turno.new
    primer_turno = turno.de_quien_es_turno?  #jugador1
    siguiente_turno = turno.de_quien_es_turno? #jugador2
    siguiente_turno.nombre_jugador.should=="jugador2"
  end
end
