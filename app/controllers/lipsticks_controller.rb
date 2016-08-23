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

  get '/lipsticks/:id/edit' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @lipstick = Lipstick.find_by_id(params[:id])
    erb :'lipsticks/edit'
  end

  post '/lipsticks/:id' do
    redirect_if_not_logged_in
    @lipstick = Lipstick.find_by_id(params[:id])
    unless Lipstick.valid_params?(params)
      redirect '/lipsticks/#{@lipstick.id}/edit?error=invalid lipstick'
    end
    @lipstick.update(params.select{|key| k=="shade" || key=="brand" || key=="makeupbag_id"})
    redirect '/lipsticks/#{@lipstick.id}'
  end

  get '/lipsticks/:id' do
    redirect_if_not_logged_in
    @lipstick = Lipstick.find_by_id(params[:id])
    erb :'lipsticks/show'
  end

  post '/lipsticks' do
    redirect_if_not_logged_in
    unless Lipstick.valid_params?(params)
      redirect '/lipsticks/new?error=invalid lipstick'
    end
    Lipstick.create(:shade => params["shade"], :brand => params["brand"])
    redirect '/lipsticks'
  end
end
