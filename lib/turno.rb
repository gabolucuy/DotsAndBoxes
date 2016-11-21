require_relative 'jugador'
class Turno
  attr_accessor :jugador_actual, :jugador1, :jugador2

  def initialize()
    @jugador1 = Jugador.new("jugador1")
    @jugador2 = Jugador.new("jugador2")
    @jugador_actual = @jugador1
  end

  def cambiar_turno
    if(@jugador_actual.nombre_jugador == @jugador1.nombre_jugador)
      @jugador_actual = @jugador2
    else
      @jugador_actual = @jugador1
    end
  end

  def de_quien_es_el_turno?
    @jugador_actual
  end

  def jugador1
    @jugador1
  end
  def jugador2
    @jugador2
  end
end
