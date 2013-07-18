class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.datetime :start_time
      t.datetime :end_time
      t.event_image :binary
      t.string :location_name
      t.point :location

      t.timestamps
    end

  def self.down
  	drop_table :posts
  end
end
