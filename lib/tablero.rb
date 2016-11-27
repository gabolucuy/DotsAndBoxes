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
  def fila
    @rows
  end
  def devolverCasilla(x,y)
    @matriz[x][y].set_posicionX(x)
    @matriz[x][y].set_posicionY(y)
    return  @matriz[x][y]
  end

  def devuelve_matriz
    @matriz
  end

  def marcarDerecha(x,y,jugador)
    @matriz[x][y].marcar("Derecha")
    if @matriz[x][y].casilla_llena?
       @matriz[x][y].asignar_jugador(jugador)
       jugador.casillaCompletada
    end
    if (y<@cols-1)
      @matriz[x][y+1].marcar("Izquierda")
      if @matriz[x][y+1].casilla_llena?
        @matriz[x][y+1].asignar_jugador(jugador)
        jugador.casillaCompletada
      end
    end
  end

  def marcarIzquierda(x,y,jugador)
    @matriz[x][y].marcar("Izquierda")
    if @matriz[x][y].casilla_llena?
      @matriz[x][y].asignar_jugador(jugador)
      jugador.casillaCompletada
    end
    if (y>0)
      @matriz[x][y-1].marcar("Derecha")
      if @matriz[x][y-1].casilla_llena?
         @matriz[x][y-1].asignar_jugador(jugador)
         jugador.casillaCompletada
      end
    end
  end

  def marcarAbajo(x,y,jugador)
    @matriz[x][y].marcar("Abajo")
    if @matriz[x][y].casilla_llena?
      @matriz[x][y].asignar_jugador(jugador)
      jugador.casillaCompletada
    end
    if (x<@rows-1)
      @matriz[x+1][y].marcar("Arriba")
      if @matriz[x+1][y].casilla_llena?
        @matriz[x+1][y].asignar_jugador(jugador)
        jugador.casillaCompletada
      end
    end
  end

  def marcarArriba(x,y, jugador)
    @matriz[x][y].marcar("Arriba")
    if @matriz[x][y].casilla_llena?
      @matriz[x][y].asignar_jugador(jugador)
      jugador.casillaCompletada
    end
    if (x>0)
      @matriz[x-1][y].marcar("Abajo")
      if @matriz[x-1][y].casilla_llena?
        @matriz[x-1][y].asignar_jugador(jugador)
        jugador.casillaCompletada
      end
    end
  end

  def marcarLado(x,y,lado, jugador)
    if(lado=="Izquierda")
      marcarIzquierda(x,y,jugador)
    end
    if(lado=="Derecha")
      marcarDerecha(x,y,jugador)
    end
    if(lado=="Arriba")
      marcarArriba(x,y,jugador)
    end
    if(lado=="Abajo")
      marcarAbajo(x,y,jugador)
    end
  end

  def accion_de_jugador(x,y,opcion,turno_jugador,jugador1,jugador2)#WIP
    if opcion=="limpiar"
      limpiar_tablero
      jugador1.reestablecer_score
      jugador2.reestablecer_score
    else
      marcarLado(x,y,opcion,turno_jugador)
    end
  end

  def tablero_lleno?
    @matriz.each do |fila|
      fila.each do |casilla|
        if !casilla.casilla_llena?
          return false
        end
      end
    end
    return true
  end

  def llenar_tablero
    @matriz.each do |fila|
      fila.each do |casilla|
        casilla.llenar_casilla
      end
    end
  end

  def limpiar_tablero
        @matriz.each do |fila|
          fila.each do |casilla|
            casilla.limpiar_casilla
          end
        end
  end
  def asignar_tamanho(num)
    @rows = num
    @cols = num
    @matriz=Array.new(@rows) {Array.new(@cols) {Casilla.new()}}
  end
end
