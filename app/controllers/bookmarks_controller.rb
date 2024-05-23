class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  def index
    @bookmark = Bookmark.all
  end

  def create
    @bookmark = Bookmark.new(params.require(:bookmark).permit(:comment))
    @bookmark.list = @list
    if @bookmark.save
    redirect_to list_path(@list)
    else
      render :new, status: :unprocessed_entity
    end
  end
end
