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
  def up
      @up
  end

  def down
      @down
  end

  def left
      @left
  end

  def right
      @right
  end

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

  def ladoSuperior(lado)
    if lado == "Arriba"
      @up = true
    end
  end

  def ladoInferior(lado) #===def ladoInferior()
    if lado == "Abajo"   #==  
      @down = true       #==    @down = true
    end                  #==
  end                    #== end
  def ladoIzquierdo(lado)
    if lado == "Izquierda"
      @left = true
    end
  end
  def ladoDerecho(lado)
    if lado == "Derecha"
      @right = true
    end
  end
#==============ESTADO=CASILLA===================================================
  def cambiar_estado_casilla(valor)

    if ladoSuperior(valor)
    elsif ladoInferior(valor)
    elsif ladoIzquierdo(valor)
    else ladoDerecho(valor)
    end
  end

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
