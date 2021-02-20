class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members, { id: false } do |t|
      t.bigint :id, :primary_key => true, :null => false,   :auto_increment => true
      t.bigint :room_id, :null => false, :references => [:rooms, :id]
      t.bigint :person_id, :null => false, :references => [:people, :id]
      t.timestamps
    end
  end
end
