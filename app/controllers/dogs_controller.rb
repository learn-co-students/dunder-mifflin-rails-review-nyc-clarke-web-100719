class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :delete]

  # self.is_sorted = false
  # @is_sorted = false
  @gui_actions = Dog.new

  def index
    @dogs = Dog.all
    render :index
  end

  def new
    @dog = Dog.new
    render :new
  end

  def create
    @dog = Dog.create(dog_params)

    if @dog.valid?
      redirect_to dog_path(@dog)
    else
      flash[:messages] = @dog.errors.full_messages
      redirect_to new_dog_path
    end
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  # def toggle_sort
  #   # self.i
  #   @is_sorted = !@is_sorted
  # end

  def update
    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      flash[:messages] = @dog.errors.full_messages
      redirect_to edit_dog_path
    end
  end

  def delete
    @dog.destroy
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end

end
