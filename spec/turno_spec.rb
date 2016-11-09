require 'casilla'
require 'tablero'
require 'turno'

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
  it "should return the score of player 1"do
    turno = Turno.new(1)
    turno.devolverScoreJug1.should == 0
  end
  it "should return the score of player 2"do
    turno = Turno.new(2)
    turno.devolverScoreJug2.should == 0
  end
  it "should add 1 point to player 1 score if he completes a box" do
    casilla = Casilla.new(true, true, true, true, false)
    turno = Turno.new(1)
    if (casilla.casilla_llena?)
      turno.incScoreJug1
      turno.devolverScoreJug1.should == 1
    end
  end
  it "should add 1 point to player 1 score if he completes a box" do
    casilla = Casilla.new(true, true, true, true, false)
    turno = Turno.new(2)
    if (casilla.casilla_llena?)
      turno.incScoreJug2
      turno.devolverScoreJug2.should == 1
    end
  end
end
