require 'casilla'
require 'tablero'
require 'turno'

describe Tablero do
  it "should verify if return a object casilla" do
    mat = Tablero.new(4,4)
    casilla = mat.devolverCasilla(0,1)
    casilla.posicionX.should == 0
    casilla.posicionY.should == 1

  end
  it "should return the object matriz initial" do
    mat1 = Tablero.new(4,4)
    mat2 = Tablero.new(4,4)
    tablero1 = mat1.devuelve_matriz
    tablero2 = mat2.devuelve_matriz
    tablero1[0][0].estado_casilla.should == tablero2[0][0].estado_casilla
  end
  it "Deberia marcar el lado Izquierdo de la casilla [0][1] cuando se marca la linea derecha de la casilla [0][0]" do
    mat1 = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    mat1.marcarDerecha(0,0, jugador.nombre_jugador)
    casilla = mat1.devolverCasilla(0,1)
    casilla.esta_marcado?("Izquierda").should == true
  end
 it "Deberia mardar el lado derecho de la casiilla [0][0] cuando marco el lado izquierdo de la casilla[0][1]" do
    mat1 = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    mat1.marcarIzquierda(0,1,jugador.nombre_jugador)
    casilla = mat1.devolverCasilla(0,0)
    casilla.esta_marcado?("Derecha").should == true
  end
  it "Deberia marcar el lado inferior de la casilla[0][0] cuando se marca el lado superior de la casilla[1][0]" do
    mat1 = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    mat1.marcarAbajo(0,0,jugador.nombre_jugador)
    casilla = mat1.devolverCasilla(1,0)
    casilla.esta_marcado?("Arriba").should == true

  end
  it "Deberia marcar el lado superior de la casilla[1][0] cuando se marca el lado inferior de la casilla[0][0]" do
    mat1 = Tablero.new(4,4)
    jugador = Jugador.new("Jugador1")
    mat1.marcarArriba(1,0,jugador.nombre_jugador)
    casilla = mat1.devolverCasilla(0,0)
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
