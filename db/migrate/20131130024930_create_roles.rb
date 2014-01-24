class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles, id: :uuid do |t|
      t.string :name
      t.timestamps
    end
    add_index :roles, :id, unique: true
  end
end
