class ProductsController < ApplicationController
    def index
      @products = [
        { name: 'Product 1', price: 10.0 },
        { name: 'Product 2', price: 15.0 },
        { name: 'Product 3', price: 20.0 }
      ]
    end
  end
  