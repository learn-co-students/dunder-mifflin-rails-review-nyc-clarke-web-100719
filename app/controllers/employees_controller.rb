class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
    render :index
  end

  def new
    @employee = Employee.new
    render :new
  end

  def create
    @employee = Employee.create(employee_params)

    if @employee.valid?
      redirect_to employee_path(@employee)
    else
      flash[:messages] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  def show
    render :show
  end

  def edit
    render :edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to employee_path(@employee)
    else
      flash[:messages] = @employee.errors.full_messages
      redirect_to edit_employee_path
    end
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(
        :first_name, :last_name, :alias, :title, :office, :dog_id, :img_url 
        )
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end
end
