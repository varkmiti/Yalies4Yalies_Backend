class InteractionsController < ApplicationController
    def index
    interactions = Interaction.all

    render json: interactions
    end

    def show 
        interaction = Interaction.find(params[:id])

        render json: interaction
    end
    
    def create 
        interaction = Interaction.new(interaction_params)

        if interaction.save
            render json: interaction, status: :created
        else 
            render json: interaction.errors, status: :unprocessable_entity
        end
    end

    private

    def interaction_params
        params.permit(:interaction, :user_id, :post_id, :occured)
    end

end
