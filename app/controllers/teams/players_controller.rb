# frozen_string_literal: true

module Teams
  class PlayersController < ApplicationController
    before_action :set_team, only: %i[create update destroy]

    def index
      render :new
    end

    def new
      @player = User.new
    end

    def create
      @player = User.new(player_params)
      @player.transaction do
        @player.team = @team
        @player.validate!
        @player.save!
      end
      redirect_to team_path(@team)
    end

    def update; end

    def destroy; end

    private

    def player_params
      params.require(:user).permit(:first_name, :last_name, :phone_number, :email)
    end

    def set_team
      @team = Team.find(params[:team_id])
    end
  end
end
