require 'sinatra'
require 'sinatra/reloader'
require_relative './lib/casilla'
require_relative './lib/tablero'

jugada = Casilla.new(false,false,false,false,false)
casillaEscogida=Tablero.new()
get '/' do
  erb :index
end
post '/escoger_matriz' do
  x=params[:posX]
  y=params[:posY]
  opcion = params[:opcion]
  casillaEscogida=devolverCasilla(posX,posY)
  casillaEscogida.cambiar_estado_casilla(opcion)
  casillaEscogida.estado_casilla

end

post '/realizar_jugada' do
  opcion = params[:opcion]
  jugada.cambiar_estado_casilla(opcion)
  jugada.estado_casilla
  #jugada.getStatus.to_s
end
