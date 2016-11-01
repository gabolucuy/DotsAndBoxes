require_relative 'casilla'
require_relative 'juego'

class Tablero
  attr_accessor :rows, :cols,:matriz, :juego

  def initialize(posx,posy)
      @rows = posx
      @cols = posy
      @matriz=Array.new(@rows) {Array.new(@cols) {Casilla.new(false,false,false,false,false)}}

      @juego=Juego.new(0)
  end

  def verify(x,y,posicion)
    "true"
  end

  def devolverCasilla(x,y)
    @matriz[x][y].set_posicionX(x)
    @matriz[x][y].set_posicionY(y)
    return  @matriz[x][y]
  end

  def devuelve_matriz
    @matriz
  end

  def devuelve_turno
    @juego
  end
  def siguiente_turno
    @juego.siguiente_turno
  end
end
