# frozen_string_literal: true

class DashboardsController < ApplicationController
  def index
    @user = User.all
  end
end
