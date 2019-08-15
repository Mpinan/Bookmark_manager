require_relative '../../lib/bookmark.rb'
require './web_helpers.rb'

describe BookmarkModel do

  describe "#all"
    it "show a list of bookmarks" do 

      insert

      bookmark = BookmarkModel.all

      expect(bookmark).to include('http://www.makersacademy.com')
      expect(bookmark).to include('http://www.askjeeves.com')
      expect(bookmark).to include('http://www.twitter.com')
      expect(bookmark).to include('http://www.google.com')

    end

    describe '.create' do
      it 'creates a new bookmark' do
        BookmarkModel.create(url: 'http://www.testbookmark.com')
        expect(BookmarkModel.all).to include 'http://www.testbookmark.com'
      end
    end
end