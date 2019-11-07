class DogsController < ApplicationController
    #before_action :this_dog, only: [:show]

    def index
        @dogs = Dog.sort_dogs_by_employee_number
    end

    def show
    end

    #private

    # def this_dog
    #     @dog = Dog.find(params[:id])
    # end
end
