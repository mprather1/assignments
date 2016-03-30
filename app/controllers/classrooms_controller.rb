class ClassroomsController < ApplicationController

  before_action :confirm_logged_in
  before_action :user_admin, except: [:show, :index]


 # layout 'default'
  def index
    @classrooms = Classroom.all
  end

  def show
    @classroom = Classroom.find(params[:id])#, :include => {:classrooms_users => :user_ids})

  end

  def new
    @classroom = Classroom.new
    @users = User.all
  end

  def create
    @classroom = Classroom.new(classroom_params)

    if @classroom.save
      redirect_to classroom_path(@classroom)
    else
      render 'new'
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
    @users = User.all
  end

  def update
    @classroom = Classroom.find(params[:id])

    if @classroom.update_attributes(classroom_params)
      redirect_to classroom_path(@classroom)
    else
      render 'edit'
    end
  end

  def delete
    @classroom = Classroom.find(params[:id])
  end

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy
    redirect_to classrooms_path
  end

  private

  def classroom_params
    params.require(:classroom).permit(:period, :user_ids => [])
  end
end
