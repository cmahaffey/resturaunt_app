class ChefsController < ApplicationController
  get '/' do
    @chefs= Item.all
    erb :'chefs/index'
  end

  get '/new' do
    erb :'chefs/new'
  end

  post '/' do
    chef = Chef.create(params[:chef])
    redirect "/chefs/#{ chefs.id }"
  end

  get '/:id' do
    @chef = Chef.find(params[:id])
    erb :'/chefs/show'
  end

  get '/:id/edit' do
    @chef = Chef.find(params[:id])
    erb :'/chefs/edit'
  end

  put '/:id' do
    chef = Chef.find(params[:id])
    chef.update(params[:chef])
    redirect "/chefs/#{chef.id}"
  end

  # DESTROY
  delete '/:id' do
    Chef.delete(params[:id])
    redirect '/chefs'
  end
end
