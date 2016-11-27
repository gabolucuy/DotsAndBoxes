require 'casilla'
require 'tablero'
require 'turno'

describe Tablero do
  it "deberia verificar si retorna un objeto casilla" do
    tablero = Tablero.new(4,4)
    casilla = tablero.devolver_la_casilla_indicada(0,1)
    casilla.posicionX.should == 0
    casilla.posicionY.should == 1

  end

  it "Deberia marcar el lado Izquierdo de la casilla [0][1] cuando se marca la linea derecha de la casilla [0][0]" do
    tablero = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    tablero.marcarDerecha(0,0, jugador.nombre_jugador)
    casilla = tablero.devolver_la_casilla_indicada(0,1)
    casilla.esta_marcado?("Izquierda").should == true
  end
 it "Deberia marcar el lado derecho de la casiilla [0][0] cuando marco el lado izquierdo de la casilla[0][1]" do
    tablero = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    tablero.marcarIzquierda(0,1,jugador.nombre_jugador)
    casilla = tablero.devolver_la_casilla_indicada(0,0)
    casilla.esta_marcado?("Derecha").should == true
  end
  it "Deberia marcar el lado inferior de la casilla[0][0] cuando se marca el lado superior de la casilla[1][0]" do
    tablero = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    tablero.marcarAbajo(0,0,jugador.nombre_jugador)
    casilla = tablero.devolver_la_casilla_indicada(1,0)
    casilla.esta_marcado?("Arriba").should == true

  end
  it "Deberia marcar el lado superior de la casilla[1][0] cuando se marca el lado inferior de la casilla[0][0]" do
    tablero = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    tablero.marcarArriba(1,0,jugador.nombre_jugador)
    casilla = tablero.devolver_la_casilla_indicada(0,0)
    casilla.esta_marcado?("Abajo").should == true

  end

  it "Deberia devolver verdadero cuando la matriz esta completa" do
    mat = Tablero.new(4,4)
    mat.llenar_tablero
    mat.tablero_lleno?.should == true
  end

  it "Deberia limpiar el tablero" do
    tablero =  Tablero.new(4,4)
    tablero.llenar_tablero
    tablero.limpiar_tablero
    tablero.tablero_lleno? == false
  end
  it "Deberia devolver el numero de filas que tiene un tablero de juego" do
    tablero =  Tablero.new(5,5)
    tablero.fila.should == 5
  end
end
