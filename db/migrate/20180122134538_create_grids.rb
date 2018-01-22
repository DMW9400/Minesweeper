class CreateGrids < ActiveRecord::Migration[5.1]
  def change
    create_table :grids do |t|
      t.integer :session_id

      t.timestamps
    end
  end
end
