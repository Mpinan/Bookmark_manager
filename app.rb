require 'sinatra/base'
require_relative 'lib/bookmark'


class Bookmark < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/bookmarks' do 
    @bookmarks = BookmarkModel.all
    erb(:bookmark)
  end

  get '/bookmarks/new' do
    erb(:bookmark_new)
  end

  post '/bookmarks' do
    BookmarkModel.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end