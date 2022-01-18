class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items.with_attached_image
    end

    def show
        item = Item.find_by(id:params[:id])
        render json: item.with_attached_image
    end

    def created
        new_item=Item.create(item_params)
        render json: new_item.with_attached_image
    end

    def destroy
        destroy_item=Item.find_by(id:params[:id])
        destroy_item.destroy
        head: no_content
    end

    private

    def item_params
        params.permit(:year, :artist, :clay, :glaze, :image)
    end
end
