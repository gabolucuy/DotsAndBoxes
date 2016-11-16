require 'controlTurnos'
require 'Jugador'

describe ControlTurnos do
  it "should initialize the game with 2 players with score = 0 " do
  	turno = ControlTurnos.new
  	turno.jug1.score.should == 0
    turno.jug2.score.should == 0
  end


end
