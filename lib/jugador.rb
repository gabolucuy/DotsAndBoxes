class Jugador
  attr_accessor :score, :nombre

  def initialize(nombre)
    @score = 0
    @nombre = nombre
  end

  def casillaCompletada()
    @score=@score+1
  end

  def cambiar_nombre(nombre)
    @nombre = nombre
  end

  def nombre_jugador
    return @nombre
  end
  def puntaje
    return @score
  end


  def reestablecer_score
    @score = 0
  end
end
