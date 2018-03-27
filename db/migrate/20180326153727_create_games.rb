class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :username
      t.integer :time

      t.timestamps
    end
  end
end
