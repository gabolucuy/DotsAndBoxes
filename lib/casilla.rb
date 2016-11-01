class Casilla
  attr_accessor :up,:down,:left,:right,:state

  def initialize(up, down, left, right, total_state)
    @up = up
    @down = down
    @left = left
    @right = right
    @status = total_state

    @posicionX = 0
    @posicionY = 0
  end

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

  def set_posicionX(posX)
      @posicionX = posX
  end

  def set_posicionY(posY)
      @posicionY = posY
  end

  def getStatus
    return @status
  end

  def getUp
    return @up
  end

  def getDown
    return @down
  end

  def getLeft
    return @left
  end

  def getRight
    return @right
  end

  def cambiar_estado_casilla(valor)

    if valor == "Arriba"
      @up = true
    elsif valor == "Abajo"
      @down = true
    elsif valor == "Izquierda"
      @left = true
    elsif valor == "Derecha"
      @right = true
    else
      casilla_llena?
    end
  end

  def casilla_llena?
    if @up == true && @down == true && @left == true && @right
      @status = true
    end
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
