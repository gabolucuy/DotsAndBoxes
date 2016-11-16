class Casilla
  attr_accessor :up,:down,:left,:right,:state, :player

  def initialize()
    @up = false
    @down = false
    @left = false
    @right = false
    @posicionX = 0
    @posicionY = 0
  end
#==========GETS=================================================================

  def posicionX
    @posicionX
  end

  def posicionY
      @posicionY
  end
#===========SETS================================================================

  def set_posicionX(posX)
      @posicionX = posX
  end

  def set_posicionY(posY)
      @posicionY = posY
  end

#==========LADOS=DE=LA=CASILLA==================================================

def marcar(lado)
  if lado == "Arriba"
    @up = true
  elsif (lado == "Abajo")
    @down = true
  elsif (lado == "Izquierda")
    @left = true
  elsif (lado == "Derecha")
    @right = true
  end
end

def esta_marcado?(lado)
  if lado == "Arriba"
    @up
  elsif (lado == "Abajo")
    @down
  elsif (lado == "Izquierda")
    @left
  elsif (lado == "Derecha")
    @right
  end
end


#==============ESTADO=CASILLA===================================================

  def casilla_llena?
    estado = false
    if @up && @down && @left && @right
      estado = true
    end
    return estado
  end

  def estado_casilla
    array = [up,down,left,right]
    respuesta = ""
    array.each do |arr|
      respuesta = respuesta + arr.to_s + " "
    end

    return respuesta
  end

end
