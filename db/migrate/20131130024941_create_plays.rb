class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays, id: :uuid do |t|
      t.string :name
      t.timestamps
    end
    add_index :plays, :id, unique: true
  end
end
