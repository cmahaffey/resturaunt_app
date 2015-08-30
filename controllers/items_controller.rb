class ItemsController < ApplicationController
  get '/' do
    @items= Item.all
    erb :'items/index'
  end

  get '/new' do
    @party=params[:party]
    @foods= Food.all
    erb :'items/new'
  end

  post '/' do
    item = Item.create(params[:item])
    redirect "/parties/#{ item.party.id }"
  end

  get '/:id' do
    @item = Item.find(params[:id])
    erb :'/items/show'
  end

  get '/:id/edit' do
    @item = Item.find(params[:id])
    erb :'/items/edit'
  end

  put '/:id' do
    item = Item.find(params[:id])
    item.update(params[:item])
    redirect "/parties/#{item.party.id}"
  end

  delete '/:id' do
    party=Item.find(params[:id]).party
    Item.delete(params[:id])
    redirect "/parties/#{ party.id }"
  end
end
