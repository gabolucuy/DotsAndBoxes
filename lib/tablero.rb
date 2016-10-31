require_relative 'casilla'

class Tablero
  attr_accessor :rows, :cols,:matriz

  def initialize(posx,posy)
      @rows = posx
      @cols = posy
      @matriz=Array.new(@rows) {Array.new(@cols) {Casilla.new(false,false,false,false,false)}}
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

end