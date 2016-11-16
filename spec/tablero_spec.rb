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
    mat1.marcarDerecha(0,0)
    casilla = mat1.devolverCasilla(0,1)
    casilla.esta_marcado?("Izquierda").should == true
  end
 it "Deberia mardar el lado derecho de la casiilla [0][0] cuando marco el lado izquierdo de la casilla[0][1]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarIzquierda(0,1)
    casilla = mat1.devolverCasilla(0,0)
    casilla.esta_marcado?("Derecha").should == true
  end
  it "Deberia marcar el lado inferior de la casilla[0][0] cuando se marca el lado superior de la casilla[1][0]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarAbajo(0,0)
    casilla = mat1.devolverCasilla(1,0)
    casilla.esta_marcado?("Arriba").should == true

  end
  it "Deberia marcar el lado superior de la casilla[1][0] cuando se marca el lado inferior de la casilla[0][0]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarArriba(1,0)
    casilla = mat1.devolverCasilla(0,0)
    casilla.esta_marcado?("Abajo").should == true

  end



end
