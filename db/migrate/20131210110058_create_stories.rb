class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :url
      t.string :voters_list
      t.string :slug
      t.integer :relevance
      t.string :username
      t.integer :user_id

      t.timestamps
    end
  end
end
