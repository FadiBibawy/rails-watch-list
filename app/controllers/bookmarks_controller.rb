class BookmarksController < ApplicationController
  before_action :set_list
  def new
    @bookmark = Bookmark.new
  end


  private

  def set_list
    @list = List.find(params[:list_id])
  end
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
