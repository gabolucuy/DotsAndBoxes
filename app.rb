require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'
require_relative 'lib/turno'

tablero = Tablero.new(4,4)
get '/' do
    @turno= tablero.devuelve_turno
  erb :index
end


post '/realizar_jugada' do

  x=params[:posX].to_i
  y=params[:posY].to_i
  opcion = params[:opcion]
  @casilla = tablero.devolverCasilla(x,y)
  @casilla.cambiar_estado_casilla(opcion)
  if @casilla.casilla_llena?
    if tablero.devuelve_turno == "jugador1"
      @casilla.set_player(1)
    end
    if tablero.devuelve_turno == "jugador2"
      @casilla.set_player(2)
    end
  else
    tablero.siguiente_turno()
  end
  erb :show
end

get '/tablero' do
  @matriz = tablero.devuelve_matriz
  @turno= tablero.devuelve_turno

  erb :tablero
end
