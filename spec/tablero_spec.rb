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

  it "should change the status of the left line of the box at [0][1] when mark the right line on the box [0][0]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarDerecha(0,0)
    casilla = mat1.devolverCasilla(0,1)
    casilla.left.should == true
  end

 it "should change the status of the right line of the box at [0][0] when mark the left line on the box [0][1]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarIzquierda(0,1)
    casilla = mat1.devolverCasilla(0,0)
    casilla.right.should == true
  end

  it "should change the status of the down line of the box at [0][0] when mark the up line on the box [1][0]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarAbajo(0,0)
    casilla = mat1.devolverCasilla(1,0)
    casilla.up.should == true
  end 

  it "should change the status of the up line of the box at [1][0] when mark the down line on the box [0][0]" do
    mat1 = Tablero.new(4,4)
    mat1.marcarArriba(1,0)
    casilla = mat1.devolverCasilla(0,0)
    casilla.down.should == true
  end

   

end
