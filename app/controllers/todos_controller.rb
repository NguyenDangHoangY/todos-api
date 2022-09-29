class TodosController < ApplicationController
    before_action :set_todo, only: [:show]
    def index
        @todos = Todo.all 
        json_response(@todos)
    end
    
    def show
        @todo_items = @todo.items
        json_response(todo: @todo, items: @todo_items)
        # json_response()
    end
    # def update
    # end

    # def create
    # end
    # def destroy
    # end
    private

    def set_todo
        @todo = Todo.find_by(id: params[:id])
        json_response(message: 'Could not find Todo with id = ' + params[:id], status: :error) if @todo.nil?
    end

end
