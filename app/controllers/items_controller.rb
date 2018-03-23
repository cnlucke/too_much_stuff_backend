class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items.shuffle, each_serializer: ItemsSerializer
  end
end
