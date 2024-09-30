class CategoriesController < ApplicationController
  class CategoriesController < ApplicationController
    # GET /categories
    def index
      @categories = Category.all
    end

    # GET /categories/:id
    def show
      @category = Category.find(params[:id])
    end

    # GET /categories/new
    def new
      @category = Category.new
    end

    # POST /categories
    def create
      @category = Category.new(category_params)
      if @category.save
        redirect_to categories_path, notice: 'Category was successfully created.'
      else
        render :new
      end
    end

    # DELETE /categories/:id
    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to categories_path, notice: 'Category was successfully deleted.'
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end
  end

end
