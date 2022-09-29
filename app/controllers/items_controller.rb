class ItemsController < ApplicationController
    before_action :set_item, only: [:show]
    def index
        @todo = Todo.find_by(id: params[:todo_id])
        @todo_items = @todo.items
        json_response(@todo_items)
    end

    def show
        @todo = Todo.find_by(id: params[:todo_id])
        @todo_items = @todo.items
        @todo_item = @todo_items.find_by(id: params[:id])
        json_response(@todo_item)
    end

    # def create
    # end
    # def update
    # end
    # def destroy
    # end
    
    private

    def set_item
        @item = Item.find_by(id: params[:id])
        json_response(message: 'Could not find Item with id = ' + params[:id], status: :error) if @item.nil?
    end
end
