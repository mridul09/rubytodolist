class TodolistsController < ApplicationController
  load_and_authorize_resource
  before_action :set_todolist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @todolists = Todolist.all
  end

  def show
  end

  def new
    @todolist = Todolist.new
  end

  def edit
  end

  def create
    @todolist = Todolist.new(todolist_params)
    @todolist.user = current_user
    if @todolist.save
      redirect_to @todolist, notice: 'Todolist was successfully created.'
    else
      render :new
    end
  end

  def update
    if @todolist.update(todolist_params)
      redirect_to @todolist, notice: 'Todolist was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @todolist.destroy
    redirect_to todolists_url, notice: 'Todolist was successfully destroyed.'
  end

  private
  def set_todolist
    @todolist = Todolist.find(params[:id])
  end

  def todolist_params
    params.require(:todolist).permit(:name, :price)
  end
end