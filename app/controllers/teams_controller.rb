# frozen_string_literal: true

class TeamsController < ApplicationController
  before_action :team_scope, only: %i[show]

  def index
    @teams = Team.all
  end

  def show
    @players = team_scope
  end

  private

  def team_scope
    Teams::TeamMember.find_by(team_id: params[:id])
  end
end
