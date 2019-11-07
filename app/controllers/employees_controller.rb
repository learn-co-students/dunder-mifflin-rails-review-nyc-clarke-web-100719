class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show 
  end 

  def new 
    @employee = Employee.new
  end 

  def edit 

  end 

  def update 
    if @employee.update_attributes(employee_params)
      redirect_to @employee
    else  
      flash[:notice] = @employee.errors.full_messages 
      render :new
    end 
  end 

  def create 
    @employee = Employee.new(employee_params)
    if @employee.save 
      redirect_to @employee
    else  
      flash[:notice] = @employee.errors.full_messages 
      render :new
    end 
  end

  def destroy 
    @employee.destroy
    redirect_to employees_path
  end

  private 
  def employee_params 
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end 

  def set_employee
    @employee =Employee.find(params[:id])
  end 

end
