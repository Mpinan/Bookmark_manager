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

  run! if app_file == $0
end