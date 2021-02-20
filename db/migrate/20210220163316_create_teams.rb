class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.text :public_key
      t.text :private_key
      t.text :team_name
      t.references :coach, foreign_key: {to_table: :users, on_delete: :cascade}
      t.string :password_digest
      t.string :api_key
      t.text :seed_phrase

      t.timestamps null: false
    end
  end
end
