class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments, { id: false } do |t|
      t.bigint  :id, :primary_key => true, :null => false,  :auto_increment => true
      t.text :comment
      t.integer :author_id,  :references => [:people, :id]
      t.integer :post_id, :references => [:posts, :id]
      t.bigint :reply_to
      t.timestamps
    end
  end
end
