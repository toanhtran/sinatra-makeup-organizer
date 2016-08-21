class LipsticksController < ApplicationController

  get '/lipsticks' do
    @lipsticks = Lipstick.all
    erb :'lipsticks/index'
  end
end
