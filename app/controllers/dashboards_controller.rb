# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    @users = User.all
  end
end
