class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  def new
    @bookmarks = Bookmark.new
  end
  def create
    bookmark = Bookmark.new(title: params[:bookmark][:title],author: params[:bookmark][:author], url: params[:bookmark][:url])
    bookmark.save
    redirect_to '/' #=>一覧ページにリダイレクトする
  end
end
