class MakeupBagsController < ApplicationController

  get '/bags' do
    @bags = MakeupBag.all
    erb :'makeup_bags/index'
  end

  get '/bags/new' do
    erb :'makeup_bags/new'
  end
end
