class DogsController < ApplicationController
    before_action :set_dog, only: [:show]

    def index
        if params[:sort] == "true"
            @dogs = Dog.select("dogs.*, COUNT(employees.id) employees_count").joins(:employees).group("employees.dog_id").order("employees_count DESC")
        else  
            @dogs = Dog.all
        end 
    end

    def show
        @employees = @dog.employees
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end
end
