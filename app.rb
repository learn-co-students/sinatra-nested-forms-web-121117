require './environment'
require './app/models/pirate.rb'
require './app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      # binding.pry
      erb :"/pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      @ships = params[:pirate][:ships].map {|ship| Ship.new(ship[:name], ship[:type], ship[:booty])}
      # binding.pry
      erb :"/pirates/show"
    end

    # get '/pirates' do
    # code other routes/actions here

  end
end
