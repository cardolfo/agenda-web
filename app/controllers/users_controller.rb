class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.order(:name).page(params[:page]).per(10)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
