class UsersController < ApplicationController
  #before_action :correct_user, only: [:edit, :update, :show]
  before_action :confirm_logged_in, :except => [:new, :create]
  before_action :user_admin

#  layout 'default'

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @classrooms = Classroom.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @classrooms = Classroom.all
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :classroom_ids, :password, :password_confirmation, :admin)
  end
end
