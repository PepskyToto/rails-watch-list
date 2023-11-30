class BookmarksController < ApplicationController
  before_action :find_list, only: [:new, :create]
  before_action :find_bookmark, only: [:destroy]

  def new
    @bookmark = @list.bookmarks.new
  end

  def create
    @bookmark = @list.bookmarks.new(bookmark_params)

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def find_list
    @list = List.find(params[:list_id])
  end

  def find_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
