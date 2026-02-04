class PagesController < ApplicationController
  def home
  end

  def menu
    @menu_items = MenuItem.all.group_by(&:category)
  end

  def order
  end

  def history
  end

  def gallery
  end

  def contact
  end
end
