class CreateRosters < ActiveRecord::Migration[5.2]
  def change
    create_table :rosters do |t|
      t.references :player
      t.references :team
      t.text :season

      t.timestamps null: false
    end
  end
end
