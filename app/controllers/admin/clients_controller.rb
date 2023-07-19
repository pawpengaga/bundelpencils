class Admin::ClientsController < ApplicationController
    before_action :authenticate_client!
    before_action :verify_admin
  
    def new
      @client = Client.new
    end
  
    def create
      @client = Client.new(client_params)
      if @client.save
        redirect_to root_path, notice: 'Usuario creado con éxito!'
      else
        render :new
      end
    end
  
    private
  
    def client_params
      params.require(:client).permit(:email, :name, :role, :phone, :password)
    end
  
    def verify_admin
      redirect_to root_path unless current_client.admin?
    end
  end