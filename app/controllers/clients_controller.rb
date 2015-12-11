class ClientsController < ApplicationController
layout 'clients_layouts'
def index
	@clients = Client.all
	
end
def show 
end
end