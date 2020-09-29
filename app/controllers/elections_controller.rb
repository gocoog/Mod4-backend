class ElectionsController < ApplicationController
    before_action :find_election, only: [:show, :create, :destroy, :update]

    def index
        @elections = Election.all
        render :json => @elections
    end

    def show
    end

    def create
        @election = Election.new(election_params)
        if @election.save
            render json: @election
        else
            render json: { errors: @election.errors.full_messages }
        end
    end

    def update
        @election.update(election_params)
        @election.save
        render json: @election
    end

    # def destroy
    #     @user.destroy
    #     render json: @users
    # end

    private
    def find_election
        @election = Election.find_by(id: params[:id])
    end

    def election_params
        params.require(:election).permit(:election_name, :election_type, :img_url, :election_desc, :election_end_date, :number_of_votes, :user_id)
    end
end
