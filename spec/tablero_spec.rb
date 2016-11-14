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

end
