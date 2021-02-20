class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people, { id: false } do |t|
      t.bigint :id, :primary_key => true, :null => false,   :auto_increment => true
      t.string :email
      t.string :name
      t.string :bio
      t.bigint :phone_number
      t.boolean :is_verified
      t.string :last_seen
      t.timestamps :null => false
    end
  end
end
