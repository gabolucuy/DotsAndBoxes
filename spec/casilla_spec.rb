require 'casilla'
require 'tablero'


describe Casilla do

  #before(@each) do
    #@casilla = Casilla.new
  #end


  it "should change the busy side of a box " do
    #casilla = Casilla.new()
    #casilla.ladoSuperior("Arriba")
    #casilla.up.should == true

    casilla = Casilla.new()
    casilla.marcar("Arriba")
    casilla.esta_marcado?("Arriba").should == true
  end

  it "should change all the sides of a box" do
    casilla = Casilla.new()
    casilla.marcar("Arriba")
    casilla.marcar("Abajo")
    casilla.marcar("Izquierda")
    casilla.marcar("Derecha")
    casilla.esta_marcado?("Arriba").should == true
    casilla.esta_marcado?("Abajo").should == true
    casilla.esta_marcado?("Izquierda").should == true
    casilla.esta_marcado?("Derecha").should == true


  end

  it "should return true if box is full" do
    casilla = Casilla.new()
    casilla.marcar("Arriba")
    casilla.marcar("Abajo")
    casilla.marcar("Izquierda")
    casilla.marcar("Derecha")
    casilla.casilla_llena?.should == true
  end
#deberia cambiar la posicion actual de la casilla
  it "should change the current position of the box " do
    casilla = Casilla.new()
    casilla.set_posicionX(1)
    casilla.set_posicionY(2)
    casilla.posicionX.should == 1
    casilla.posicionY.should == 2
  end

end
