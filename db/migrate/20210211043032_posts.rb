class Posts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts, { id: false } do |t|
      t.bigint  :id, :primary_key => true, :null => false,  :auto_increment => true
      t.text :text
      t.string :location
      t.integer :likes
      t.integer :shares
      t.bigint :author_id,  :references => [:people, :id]
      t.timestamps  :null => false
    end
  end
end
