class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.all
  end
  def new
    @bookmarks = Bookmark.new
  end
  def create
    bookmark = Bookmark.new(title: params[:bookmark][:title],author: params[:bookmark][:author], url: params[:bookmark][:url],phrase: params[:bookmark][:phrase])
    bookmark.save
    redirect_to '/' #=>一覧ページにリダイレクトする
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update

    bookmark = Bookmark.find(params[:id])
    bookmark.update(title: params[:bookmark][:title],
    url: params[:bookmark][:url],phrase: params[:bookmark][:phrase])
    
    redirect_to '/'
    
    end
end
