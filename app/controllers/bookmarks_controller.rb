class BookmarksController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @bookmark = Bookmark.new
    @recipes = Recipe.all # Fetch all recipes to be added as bookmarks
  end
  def create
    @category = Category.find(params[:category_id])
    @bookmark = @category.bookmarks.build(bookmark_params)
    if @bookmark.save
      redirect_to category_path(@category), notice: 'Recipe added to category.'
    else
      render :new
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:recipe_id)
  end
  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to category_path(params[:category_id]), notice: 'Recipe removed from category.'
  end


end
