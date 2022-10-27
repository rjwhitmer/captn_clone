# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @full_name = "#{@user.first_name} #{@user.last_name}"
    @games = PlayerGame.where(user: @user)
  end

  def create
    @user = User.new(user_params)

    @user.transaction do
      @user.validate!
      @user.save!
    end
    redirect_to users_path
  rescue ActiveRecord::RecordInvalid
    render :new, status: :unprocessable_entity
  end

  def update
    @user.update(user_params)

    @user.transaction do
      @user.save!
    end
  rescue ActiveRecord::RecordInvalid
    render :update, status: :unprocessable_entity
  end

  def destroy
    @user.destroy!

    redirect_to users_path, notice: 'User was successfully deleted'
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
