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
    p 'New bookmark added'
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    p params
    redirect '/bookmarks'
  end

  run! if app_file == $0
end