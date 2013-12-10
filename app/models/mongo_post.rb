class MongoPost
  include MongoMapper::Document

  key :title, String
  key :content, String

  timestamps!

  validates_presence_of :title, :content
end