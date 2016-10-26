require 'sinatra'
require_relative './lib/casilla'
jugada = Casilla.new(false,false,false,false,false)

get '/' do
  erb :index
end


post '/realizar_jugada' do
  opcion = params[:opcion]
  jugada.cambiar_estado_casilla(opcion)
  jugada.estado_casilla
  #jugada.getStatus.to_s
end
