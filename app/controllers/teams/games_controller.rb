# frozen_string_literal: true

module Teams
  class GamesController < ApplicationController
    before_action :set_team

    def index
      @games = Game.all
    end

    def show
      @game = Game.find(params[:id])
      @players = PlayerGame.where(game: @game)
    end

    def new; end

    def create; end

    def update; end

    def destroy; end

    private

    def set_team
      @team = Team.find(params[:team_id])
    end
  end
end
