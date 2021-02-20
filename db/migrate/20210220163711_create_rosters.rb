class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.references :player
      t.references :team

      t.timestamps null: false
    end
  end
end
