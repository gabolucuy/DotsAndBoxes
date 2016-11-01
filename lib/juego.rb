class Juego
  attr_accessor :turno, :cont

  def initialize(cont)
    @turno = "jugador1"
    @cont = cont
  end

  def es_turno_de
   return  @turno
  end

  def siguiente_turno
    @cont=@cont+1
    if ((@cont%2)==0)
        @turno = "jugador2"
    else
        @turno = "jugador1"
    end
  end


end
