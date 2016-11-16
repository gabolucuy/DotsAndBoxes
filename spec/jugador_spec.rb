require 'jugador'

describe Jugador do
 it "should initialize the player with score = 0 " do
    jugador = Jugador.new()
    jugador.score.should == 0
  end

  it "should change the score of the player when the box is full" do
    jugador = Jugador.new()
    jugador.casillaCompletada()
    jugador.score.should == 1
  end

end

