# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :set_team, only: %i[show]
  def index
    @teams = Team.all
  end

  def show
    @players = User.where(team_id: params[:id])
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
