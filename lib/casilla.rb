class Casilla
  attr_accessor :up,:down,:left,:right,:state

  @up = false
  @down = false
  @left = false
  @right = false
  @status = false

  def initialize(up, down, left, right, total_state)
    @up = up
    @down = down
    @left = left
    @right = right
    @status = total_state
  end

  def getStatus
    return @status
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
    end
  end

  def casilla_llena?
    if @up == true && @down == true && @left == true && @right
      @status = true
    end
  end

  def estado_casilla
    array = [@up,@down,@left,@right]
    respuesta = ""
    array.each do |arr|
      respuesta = respuesta + arr.to_s + " "
    end

    return respuesta
  end

end
