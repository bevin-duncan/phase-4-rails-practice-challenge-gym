class ClientsController < ApplicationController

before_action :find_client

    def show
        render json: @client
    end

    private 

    def find_client
        @client = Client.find(params[:id])
    end
end
