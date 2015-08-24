class PartiesController < ApplicationController
  get '/' do
    @party= Party.all
    erb :'partys/index'
  end

  get '/new' do
    erb :'partys/new'
  end

  post '/' do
    party = Party.create(params[:party])
    redirect "/partys/#{ party.id }"
  end

  get '/:id' do
    @party = Party.find(params[:id])
    erb :'/partys/show'
  end

  get '/:id/edit' do
    @party = Party.find(params[:id])
    erb :'/partys/edit'
  end

  put '/:id' do
    party = Party.find(params[:id])
    Party.update(params[:party])
    redirect "/partys/#{party.id}"
  end

  # DESTROY
  delete '/:id' do
    Party.delete(params[:id])
    redirect '/partys'
end
