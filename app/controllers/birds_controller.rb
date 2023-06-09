class BirdsController < ApplicationController

    def index
        render json: Bird.all
    end

    def show
        birds = Bird.find_by(id: params[:id])
        if birds
            render json: birds
        else
            render json: {error: 'bird not found'}, status: :not_found
        end
    end
end
