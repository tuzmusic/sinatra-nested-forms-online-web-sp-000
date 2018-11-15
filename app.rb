require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb 'pirates/new'.to_sym
    end

    post '/pirates' do

      pirate = Pirate.new(params[:pirate])
      @pirate = Pirate.all.last

      params[:pirate][:ships].each {|hash| ship = Ship.new(hash)}
      @ships = Ship.all
      # raise @pirate.inspect

      erb 'pirates/show'.to_sym
    end

  end
end
