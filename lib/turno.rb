class Turno
  attr_accessor :turno, :contadorDeTurno, :puntajeJug1, :puntajeJug2

  def initialize(contadorDeTurno)
    @turno = "jugador1"
    @contadorDeTurno = contadorDeTurno
    @puntajeJug1 = 0;
    @puntajeJug2 = 0;
  end

  def es_turno_de
   return  @turno
  end

  def siguiente_turno
    @contadorDeTurno=@contadorDeTurno+1
    if ((@contadorDeTurno%2)==0)
        @turno = "jugador2"
    else
        @turno = "jugador1"
    end
  end
  def devolverScoreJug1
      return @puntajeJug1
  end
  def devolverScoreJug2
    return @puntajeJug2
  end
  def incScoreJug1
    @puntajeJug1 = @puntajeJug1+1
  end
  def incScoreJug2
    @puntajeJug2 = @puntajeJug2+1
  end
end
