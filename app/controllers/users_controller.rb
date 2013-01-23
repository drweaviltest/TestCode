class UsersController < ApplicationController
  before_filter :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users=User.all
  end

  def new
    @user=User.new
  end

  def create
    @user=User.create(params[:user])
    if @user.errors.empty?
      redirect_to user_path(@user.id)
    else
      render "users/new"
    end
  end

  def edit
  end

  def show
      render text: "User not found", status: 404 unless @user
  end

  def destroy
    @user.destroy
    redirect_to "users/index"
  end

  def  update
    @user.update_attributes(params[:user])
    if @user.errors.empty?
      redirect_to "users/index"
    else
      render "users/edit"
    end
  end

  private
    def find_user
      @user=User.find(params[:id])
    end
end
