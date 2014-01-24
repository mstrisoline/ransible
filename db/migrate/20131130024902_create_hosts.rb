class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts, id: :uuid do |t|
      t.string :name, null: false
      t.string :group_id
      t.timestamps
    end
    add_index :hosts, :id, unique: true
  end
end
