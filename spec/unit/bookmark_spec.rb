require_relative '../../lib/bookmark.rb'
require './web_helpers.rb'

describe BookmarkModel do

  describe "#all" do
    it "show a list of bookmarks" do 

      insert

      bookmark = BookmarkModel.all
      
      expect(bookmark.length).to eq 4
      p 'bookmark'
      p bookmark.first.id
      expect(bookmark.first).to be_a BookmarkModel
      expect(bookmark.first.id).to eq '1'
      expect(bookmark.first.title).to eq 'Makers Academy'
      expect(bookmark.first.url).to eq 'http://www.makersacademy.com'

    end
  end

  describe '.create' do
    it 'creates a new bookmark' do

      bookmark = BookmarkModel.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      #persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a BookmarkModel
      expect(bookmark.id).to eq '1'
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end
  end
end