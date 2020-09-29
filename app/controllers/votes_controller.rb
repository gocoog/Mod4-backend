class VotesController < ApplicationController
    def index
        @votes = Vote.all
        render json: @votes
    end
    def create
        @vote = Vote.new(vote_params)
        if @vote.save
            render json: @vote
        else
            render json: { errors: @vote.errors.full_messages }
        end
    end

    private

    def vote_params
        params.require(:vote).permit(:user_id, :election_id)
    end
end
