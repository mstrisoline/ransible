class CreateHostVars < ActiveRecord::Migration
  def change
    create_table :host_vars, id: :uuid do |t|
      t.string :key, null: false
      t.string :value, null: false
      t.string :host_id, null: false
      t.timestamps
    end
    add_index :host_vars, :id, unique: true
  end
end
