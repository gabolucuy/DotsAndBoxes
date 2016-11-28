require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'
require_relative 'lib/turno'
require 'sinatra/flash'
turno = Turno.new
tablero = Tablero.new(4,4)
filas=0
enable :sessions

get '/' do
  erb :seleccionDeTablero
end

get '/index' do
  @matriz = tablero.devuelve_matriz
  @tablero = tablero.tablero_lleno?
  @jugador1 = turno.jugador1
  @jugador2 = turno.jugador2
  @turno= turno.de_quien_es_el_turno?
  @numero_de_filas = tablero.fila
  @filas=filas
  erb :index
end

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
  if(opcion=="limpiar")
    tablero.accion_de_jugador(x,y,opcion,turno.de_quien_es_el_turno?,@jugador1,@jugador2)
    turno.reset_turno
      redirect '/'
  else
    if(tablero.accion_de_jugador(x,y,opcion,turno.de_quien_es_el_turno?,@jugador1,@jugador2))
       if(!tablero.devolver_la_casilla_indicada(x,y).casilla_llena?)
         turno.cambiar_turno
       end
    else
      flash[:warning] ="Esta linea ya esta jugada, intenta con otra"
    end
  end
  @turno= turno.de_quien_es_el_turno?
  @numero_de_filas = tablero.fila
  @filas=filas
  redirect '/index'
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
