class PostulationsController < ApplicationController
    before_action :set_postulation, only: %i[ show edit update destroy]

    def index
        @postulations = Postulation.all
    end

    def set_postulation
        @postulation = Postulation.find(params[:id]) #1.Busca un post que viene definido por su id y lo guarda en @post
    end
end