class ProductsController < ApplicationController
    def index 
        @products = Product.all
    end
    def show 
        @product = Product.find(params[:id])
    end
    def new 
        @product = Product.new 
    end  
    def create 
        @product  = Product.new(product_params)
        if @product.save 
            redirect_to "/products/#{@product.id}"
        else 
            render :new 
        end 
    end

    def edit 
        @product = Product.find(params[:id])
    end 
    def update 
        @product = Product.find(params[:id])
        if @product.update(product_params)
            redirect_to "/products/#{@product.id}"
        else 
            render :edit 
        end 
    end 
    def destroy 
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to "/products"
    end

    private 
        def product_params 
            params.require(:product).permit(:name)
        end
end
