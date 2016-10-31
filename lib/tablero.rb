require_relative 'casilla'

class Tablero
  attr_accessor :rows, :cols,:matriz
  @rows= 4
  @cols= 4
  @matriz=Array.new(@rows) {Array.new(@cols) {Casilla.new(false,false,false,false,false)}}
  def verify(x,y,posicion)
    "true"
  end
  def devolverCasilla(x,y)
    return  @matriz[x][y]
  end

end
