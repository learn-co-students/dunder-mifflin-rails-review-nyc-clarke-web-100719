class DogsController < ApplicationController
    before_action :this_dog, only: [:show]

    def index
        if params[:sort] == "true"
            @dogs = Dog.all.sort_by { |dog| -dog.employees.count }
        else
            @dogs = Dog.all
        end
    end

    def show
    end

    private

    def this_dog
        @dog = Dog.find(params[:id])
    end

end
