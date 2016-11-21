class Jugador
  attr_accessor :score

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
end
