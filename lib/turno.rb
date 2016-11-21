class Turno
  attr_accessor :turno, :contadorDeTurno, :puntajeJug1, :puntajeJug2

  def initialize()
    @jugador1 = Jugador.new("jugador1")
    @jugador2 = Jugador.new("jugador2")
    @anterior_jugador = @jugador2
  end

  def de_quien_es_turno?
    if(@anterior_jugador.nombre_jugador == @jugador1.nombre_jugador)
      @anterior_jugador = @jugador2

      return @jugador2
    else
      @anterior_jugador = @jugador1
      return @jugador1
    end

  end

end
