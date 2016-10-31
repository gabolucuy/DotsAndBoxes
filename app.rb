require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/casilla'
require_relative 'lib/tablero'

tablero = Tablero.new(4,4)
get '/' do
  erb :index
end


post '/realizar_jugada' do

  x=params[:posX].to_i
  y=params[:posY].to_i
  opcion = params[:opcion]
  @casilla = tablero.devolverCasilla(x,y)
  @casilla.cambiar_estado_casilla(opcion)


  erb :show
end
