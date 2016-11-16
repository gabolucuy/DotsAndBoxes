require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'
require_relative 'lib/turno'

tablero = Tablero.new(4,4)
get '/' do
  @matriz = tablero.devuelve_matriz
  erb :index
end

post '/realizar_jugada' do
  @matriz = tablero.devuelve_matriz
  x=params[:posX].to_i
  y=params[:posY].to_i
  opcion = params[:opcion]
  tablero.marcarLado(x,y,opcion)

  erb :index
end

get '/show' do
  #@casilla = tablero.devolverCasilla(x,y)
  erb :show
end
