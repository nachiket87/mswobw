class AddBoard < ActiveRecord::Migration[7.1]
  def change
    create_table :boards do |t|
      t.string :email
      t.integer :width
      t.integer :height
      t.integer :mine_count
      t.string :name
      t.json :layout

      t.timestamps
    end
  end
end
