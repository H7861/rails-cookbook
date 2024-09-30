require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
def index
  @categories = Category.all
end
def show
  @category = Category.find(params[:id])
end
def new
  @category = Category.new
end
def create
  @category = Category.new(category_params)
  if @category.save
    redirect_to categories_path, notice: "Category created successfully."
  else
    render :new
  end
end

private

def category_params
  params.require(:category).permit(:name)
end
def destroy
  @category = Category.find(params[:id])
  @category.destroy
  redirect_to categories_path, notice: "Category deleted successfully."
end
