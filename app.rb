require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'
require_relative 'lib/turno'

turno = Turno.new
tablero = Tablero.new(4,4)

get '/' do
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  @matriz = tablero.devuelve_matriz
  @turno= turno.de_quien_es_el_turno?
  erb :index
end

post '/realizar_jugada' do
  @matriz = tablero.devuelve_matriz
  x=params[:posX].to_i
  y=params[:posY].to_i
  opcion = params[:opcion]
  tablero.marcarLado(x,y,opcion,turno.de_quien_es_el_turno?)
  turno.cambiar_turno
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  @turno= turno.de_quien_es_el_turno?
  erb :index
end

get '/show' do
  #@casilla = tablero.devolverCasilla(x,y)
  erb :show
end
