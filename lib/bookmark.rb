require 'pg'

class BookmarkModel 
  
  attr_reader :id, :title, :url

  def initialize(id:, title:, url:)
    @id  = id
    @title = title
    @url = url
  end

  def self.all
   
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(:dbname => 'bookmark_manager_test')
    else
      connection = PG.connect(:dbname => 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")

    result.map do |row|
      BookmarkModel.new(id: row['id'], title: row['title'], url: row['url'])
    end
  end

  def self.create(url:, title:)

    #return false unless is_url?(url)

    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end 

    result = connection.exec("INSERT INTO bookmarks (url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    BookmarkModel.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])

    #connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title")
  end

end