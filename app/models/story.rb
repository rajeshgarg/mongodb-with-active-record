class Story
	include MongoMapper::Document
	key :title, String
	key :url, String
	key :voters, Array
	key :slug, String
	key :votes, Integer, :default => 0
	key :relevance, Integer, :default => 0

	#cached Values

	key :comment_count, Integer, :default=>0
	key :username, String
   # Note this: ids are of class ObjectId                      
  key :user_id, ObjectId
  timestamps!

  # relationships.
  belongs_to :user

  #validations
  validates :title, presence: true

  def voters_list=(arg)
    self.voters = arg.split(',').map { |v| v.strip }
  end

  def voters_list
    self.voters.join(', ')
  end
end
