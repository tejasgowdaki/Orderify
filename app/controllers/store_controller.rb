class StoreController < ApplicationController
  def index
  	@products = Product.where('is_featured = ?', true).limit(10)
  	@latest_products = Product.order('created_at DESC').limit(10)
  end
end
