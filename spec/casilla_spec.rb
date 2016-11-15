require 'casilla'
require 'tablero'


describe Casilla do

  #before(@each) do
    #@casilla = Casilla.new
  #end


  it "should change the busy side of a box " do
    casilla = Casilla.new()
    casilla.ladoSuperior("Arriba")
    casilla.up.should == true
  end

  it "should change all the sides of a box" do
    casilla = Casilla.new()
    casilla.ladoSuperior("Arriba")
    casilla.ladoInferior("Abajo")
    casilla.ladoIzquierdo("Izquierda")
    casilla.ladoDerecho("Derecha")
    casilla.up.should == true
    casilla.down.should == true
    casilla.left.should == true
    casilla.right.should == true
  end

  it "should return true if box is full" do
    casilla = Casilla.new()
    casilla.ladoSuperior("Arriba")
    casilla.ladoInferior("Abajo")
    casilla.ladoIzquierdo("Izquierda")
    casilla.ladoDerecho("Derecha")
    casilla.casilla_llena?.should == true
  end

  it "should return true if box is full" do
    casilla = Casilla.new()
    casilla.cambiar_estado_casilla("Izquierda")
    casilla.left.should == true
  end

  it "should change the current position of the box " do
    casilla = Casilla.new()
    casilla.set_posicionX(1)
    casilla.set_posicionY(2)
    casilla.posicionX.should == 1
    casilla.posicionY.should == 2
  end

end
