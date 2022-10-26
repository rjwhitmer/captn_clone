# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new; end

  def create; end

  def update; end

  def destroy; end

  private

  def user_params
    params.require(:team).permit(:first_name, :last_name, :phone_number, :email)
  end
end
