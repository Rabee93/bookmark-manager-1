require 'pg'


class Bookmark
  
  @bookmarks = [
    "www.cats.com",
    "www.dogs.com"
  ]
def self.all
  conn = PG.connect( dbname: 'bookmark_manager' )
  result = conn.exec( "SELECT * FROM bookmarks" ) do |result|
  result.map { |bookmark| bookmark['url'] }
  end
end

  # @bookmarks.join
  # attr_reader :user, :url, :name, :tag_collection, :comment_collection
  #
  # def self.all
  #   bookmarks = {
  #
  #   }
  # end
  #
  #
  # def initialize(user, url, name, tag_collection, comment_collection)
  #   @user = user
  #   @url = url
  #   @name = name
  #   @tag_collection = tag_collection
  #   @comment_collection = comment_collection
  #
  # end

end
