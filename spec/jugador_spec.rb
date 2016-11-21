require 'jugador'

describe Jugador do
 it "deberia inicializar el jugador con score = 0 " do
    jugador = Jugador.new("jugador1")
    jugador.score.should == 0
  end

  it "deberia cambiar el score del jugador cuando la casilla esta llena" do
    jugador = Jugador.new("jugador1")
    jugador.casillaCompletada()
    jugador.score.should == 1
  end

  it "deberia devolver el nombre por defecto del jugador" do
    jugador = Jugador.new("jugador1")
    jugador.nombre_jugador.should == "jugador1"
  end

  it "deberia cambiar el nombre inicial por uno nuevo" do
    jugador = Jugador.new("jugador1")
    jugador.cambiar_nombre("jugador2")
    jugador.nombre_jugador.should == "jugador2"
  end
end
