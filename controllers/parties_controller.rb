class PartiesController < ServersController
  get '/' do
    @server=Server.find(params[:id])
    @parties= Party.all
    erb :'parties/index'
  end

  get '/new' do
    if params[:waitstaff]
      @server = Server.find(params[:waitstaff])
    end
    erb :'parties/new'
  end

  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{ party.id }"
  end

  get '/:id' do
    @party = Party.find(params[:id])
    erb :'/parties/show'
  end

  get '/:id/edit' do
    @servers=Server.all
    @party = Party.find(params[:id])
    erb :'/parties/edit'
  end

  put '/:id' do
    party = Party.find(params[:id])
    party.update(params[:party])
    redirect "/parties/#{party.id}"
  end

  # DESTROY
  delete '/:id' do
    server=Party.find(params[:id]).server
    Party.delete(params[:id])
    redirect "/servers/#{server.id}/parties"
  end
end
