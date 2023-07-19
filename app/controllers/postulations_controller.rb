class PostulationsController < ApplicationController
    before_action :set_postulation, only: %i[ show edit update destroy ]

      
    def index
        @client = Client.find(params[:client_id])
        @postulations = @client.postulations
    end
  
    def create
        @article = Article.find(params[:postulation][:article_id])
        
        @postulation = Postulation.new(postulation_params)
        @postulation.client = current_client
  
        # if client_signed_in?
        #     @comment.client.id = current_client.id
        # else
        #     @comment.client_id = 2
        # end
  
        respond_to do |format|
            if @postulation.save
                format.html { redirect_to article_path(@article.id), notice: 'Postulación creada exitosamente'}
            else
                format.html { redirect_to article_path(@article.id), notice: 'Hubo un error en la creación de la postulación.'}
            end
        end
    end
  
    def destroy
        @article = Article.find(params[:article_id])
        @postulation = @article.postulations.find(params[:id])
        @postulation.destroy
        redirect_to article_path(@article), notice: 'Postulación eliminada'
      end
      

    private

    def set_postulation
        @postulation = Postulation.find(params[:id]) #1.Busca un post que viene definido por su id y lo guarda en @post
    end

    def postulation_params
        params.require(:postulation).permit(:description,:client_id,:article_id)
    end
end