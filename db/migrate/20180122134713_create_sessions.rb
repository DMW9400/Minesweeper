class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.integer :user_id
      t.integer :grid_id
      t.integer :rounds, :default => 0
      t.integer :wins, :default => 0
      t.integer :losses, :default => 0

      t.timestamps
    end
  end
end
