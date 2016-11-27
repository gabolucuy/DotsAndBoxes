require 'casilla'
require 'tablero'


describe Casilla do

  #before(@each) do
    #@casilla = Casilla.new
  #end

  it "deberia marcar el lado de una casilla" do
    casilla = Casilla.new()
    casilla.marcar("Arriba")
    casilla.esta_marcado?("Arriba").should == true
  end

  it "deberia marcar todos los lados de una casilla" do
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

  it "deberia retornar true si la casilla esta llena" do
    casilla = Casilla.new()
    casilla.marcar("Arriba")
    casilla.marcar("Abajo")
    casilla.marcar("Izquierda")
    casilla.marcar("Derecha")
    casilla.casilla_llena?.should == true
  end

end
