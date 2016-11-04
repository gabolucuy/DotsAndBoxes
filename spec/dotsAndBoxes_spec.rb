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
    casilla.getStatus.should == true
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


end

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



describe Turno do
  it"control turnos jugador1" do
    turno = Turno.new(1)
    turno.es_turno_de.should == "jugador1"
    turno.siguiente_turno()
    turno.siguiente_turno()
    turno.es_turno_de.should == "jugador1"

  end
  it"control turnos jugador2" do
    turno = Turno.new(1)
    turno.siguiente_turno()
    turno.es_turno_de.should == "jugador2"
    turno.siguiente_turno()
    turno.siguiente_turno()
    turno.es_turno_de.should == "jugador2"
  end
end
