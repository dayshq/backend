class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms, { id: false } do |t|
      t.bigint :id, :primary_key => true, :null => false,   :auto_increment => true
      t.string :name, :null => false
      t.bigint :owner, :null => false, :references => [:person, :id]
      t.timestamps
    end
  end
end
