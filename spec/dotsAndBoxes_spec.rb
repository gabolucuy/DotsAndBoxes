require 'casilla'

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
    casilla.getStatus.should == true
  end



end
