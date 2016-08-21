class MakeupBagsController < ApplicationController

  get '/bags' do
    @bags = MakeupBag.all
    erb :'makeup_bags/index'
  end
end
