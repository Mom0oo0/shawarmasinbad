class Admin::MenuItemsController < AdminController
  before_action :set_menu_item, only: [:edit, :update, :destroy]

  def index
    @menu_items = MenuItem.all.order(:category, :position)
  end

  def new
    @menu_item = MenuItem.new
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to admin_menu_items_path, notice: "Item created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @menu_item.update(menu_item_params)
      redirect_to admin_menu_items_path, notice: "Item updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to admin_menu_items_path, notice: "Item deleted successfully."
  end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:title_en, :title_fr, :description_en, :description_fr, :price_small, :price_large, :category, :image, :position)
  end
end
