class Jugador
  attr_accessor :score

  def initialize()
    @score = 0
  end

  def casillaCompletada()
    @score=@score+1
  end
end
