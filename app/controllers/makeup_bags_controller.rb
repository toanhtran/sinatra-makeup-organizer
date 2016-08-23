class MakeupBagsController < ApplicationController

  get '/bags' do
    redirect_if_not_logged_in
    @bags = MakeupBag.all
    @lipsticks = Lipstick.all
    @user = current_user
    erb :'makeup_bags/index'
  end

  get '/bags/new' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'makeup_bags/new'
  end

  get '/bags/:id/edit' do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @bag = MakeupBag.find_by_id(params[:id])
    erb :'makeup_bags/edit'
  end

  post '/bags/:id' do
    redirect_if_not_logged_in
    @bag = MakeupBag.find_by_id(params[:id])
    unless MakeupBag.valid_params?(params)
      redirect "/bags/#{@bag.id}/edit?error=invalid bag"
    end
    @bag.update(params.select{|k|k=="name"})
    redirect "/bags/#{@bag.id}"
  end

  get '/bags/:id' do
    redirect_if_not_logged_in
    @bag = MakeupBag.find_by_id(params[:id])
    erb :'makeup_bags/show'
  end

  post '/bags' do
    redirect_if_not_logged_in
    unless MakeupBag.valid_params?(params)
      redirect "/bags/new?error=invalid bag"
    end
    MakeupBag.create(:name => params[:name])
    redirect "/bags"
  end
end
