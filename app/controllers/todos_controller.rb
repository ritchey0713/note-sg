class TodosController < ApplicationController

    def show 
        @todo = Todo.find(params[:id])
        render json: TodoSerializer.new(@todo)
    end 

    def index 
        @todos = Todo.all 
        render json: TodoSerializer.new(@todos)
    end 


    def create 
        @todo.new(todos_params)

        if @todo.save 
            render json: TodoSerializer.new(@todo)

        else 
            render :form
        end 




    end 



    private 

    def todos_params 

    end 
end
