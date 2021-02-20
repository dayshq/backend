class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages, { id: false } do |t|
      t.bigint :id, :primary_key => true, :null => false,   :auto_increment => true
      t.string :message, :null => false
      t.bigint :author, :null => false, :references => [:people, :id]
      t.bigint :room_id, :null => false, :references => [:rooms, :id]
      t.timestamps
    end
  end
end
