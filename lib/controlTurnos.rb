require_relative 'Jugador'

class ControlTurnos
  attr_accessor :turno, :contadorDeTurno, :jug1, :jug2

  def initialize()
  	@jug1= Jugador.new
  	@jug2= Jugador.new
  end

  
end
