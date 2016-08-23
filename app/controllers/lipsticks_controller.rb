class LipsticksController < ApplicationController

  get '/lipsticks' do
    redirect_if_not_logged_in
    @lipsticks = Lipstick.all
    erb :'lipsticks/index'
  end

  get '/lipsticks/new' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'lipsticks/new'
  end
end
