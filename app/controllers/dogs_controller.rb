class DogsController < ApplicationController

    def index 
        @dogs = Dog.all

        if params[:sort]
            @dogs = Dog.all.sort_by { |dog| -dog.employees.count } #sort by descending employee count 
        else
            @dogs = Dog.all
        end
    end 

    def show
        @dog = Dog.find(params[:id])
    end

end
