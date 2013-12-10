class CreateMongoPosts < ActiveRecord::Migration
  def change
    create_table :mongo_posts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
