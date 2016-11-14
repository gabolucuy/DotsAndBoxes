require 'casilla'
require 'tablero'
require 'turno'


describe Casilla do

  #before(@each) do
    #@casilla = Casilla.new
  #end


  it "should show box's new status" do
    casilla = Casilla.new(false, true, false, false, false)
    casilla.cambiar_estado_casilla("Arriba")
    casilla.estado_casilla.should == "true true false false "
  end

  it "should change status state if all sides are true" do
    casilla = Casilla.new(true, true, true, true, false)
    casilla.casilla_llena?
    casilla.getStatus.should == false
  end

  it "should return the current position of the box " do
    casilla = Casilla.new(true, true, true, true, false)
    casilla.posicionX.should == 0
    casilla.posicionY.should == 0
  end

  it "should change the current position of the box " do
    casilla = Casilla.new(true, true, true, true, false)
    casilla.set_posicionX(1)
    casilla.set_posicionY(2)
    casilla.posicionX.should == 1
    casilla.posicionY.should == 2
  end

  it "should change the player" do
    casilla = Casilla.new(true, true, true, true, false)
    casilla.set_player(1)
    casilla.get_player.should == 1
    casilla.set_player(2)
    casilla.get_player.should ==2

  end

end
