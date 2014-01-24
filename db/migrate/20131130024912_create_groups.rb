class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups, id: :uuid do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :groups, :id, unique: true
  end
end
