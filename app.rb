require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'
require_relative 'lib/turno'

turno = Turno.new
tablero = Tablero.new(4,4)
filas=0

get '/juegoTerminado' do
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  @matriz = tablero.devuelve_matriz
  @turno= turno.de_quien_es_el_turno?
  erb :juegoTerminado
end

post '/realizar_jugada' do
  @matriz = tablero.devuelve_matriz
  @tablero = tablero.tablero_lleno?
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  y=params[:posX].to_i
  x=params[:posY].to_i
  opcion = params[:opcion]
  tablero.accion_de_jugador(x,y,opcion,turno.de_quien_es_el_turno?,@jugador1,@jugador2)
  #tablero.marcarLado(x,y,opcion,turno.de_quien_es_el_turno?)
  turno.cambiar_turno
  @turno= turno.de_quien_es_el_turno?
  @numero_de_filas = tablero.fila
  @filas=filas
  erb :index
end

get '/show' do
  #@casilla = tablero.devolverCasilla(x,y)
  erb :show
end

get '/' do
  erb :seleccionDeTablero
end
post '/seleccionarTablero' do
  filas = params[:num].to_i
  @filas = filas
  @matriz = tablero.asignar_tamanho(filas)
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  @matriz = tablero.devuelve_matriz
  @tablero = tablero.tablero_lleno?
  @turno= turno.de_quien_es_el_turno?

  erb :index
end
