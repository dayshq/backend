class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends, { id: false }  do |t|
      t.bigint  :id, :primary_key => true, :null => false,  :auto_increment => true
      t.bigint :person_id, :null => false, :references => [:people, :id]
      t.bigint :friend_id, :null => false, :references => [:people, :id]
      t.timestamps
    end
  end
end
