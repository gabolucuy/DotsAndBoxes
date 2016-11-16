require_relative 'casilla'

class Tablero
  attr_accessor :rows, :cols,:matriz
  def initialize(posx,posy)
      @rows = posx
      @cols = posy
      @matriz=Array.new(@rows) {Array.new(@cols) {Casilla.new()}}

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

  def marcarDerecha(x,y)
    @matriz[x][y].marcar("Derecha")
    if (y<@cols-1)
      @matriz[x][y+1].marcar("Izquierda")
    end
  end

   def marcarIzquierda(x,y)
    @matriz[x][y].marcar("Izquierda")
    if (y>0)
      @matriz[x][y-1].marcar("Derecha")
    end
  end

  def marcarAbajo(x,y)
    @matriz[x][y].marcar("Abajo")
    if (x<@rows-1)
      @matriz[x+1][y].marcar("Arriba")
    end
  end

  def marcarArriba(x,y)
    @matriz[x][y].marcar("Arriba")
    if (x>0)
      @matriz[x-1][y].marcar("Abajo")
    end
  end

  def marcarLado(x,y,lado)
    if(lado=="Izquierda")
      marcarIzquierda(x,y)
    end
    if(lado=="Derecha")
      marcarDerecha(x,y)
    end
    if(lado=="Arriba")
      marcarArriba(x,y)
    end
    if(lado=="Abajo")
      marcarAbajo(x,y)
    end

  end

end
