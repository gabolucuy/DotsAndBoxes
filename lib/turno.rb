class Turno
  attr_accessor :turno, :contadorDeTurno

  def initialize(contadorDeTurno)
    @turno = "jugador1"
    @contadorDeTurno = contadorDeTurno
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


end
