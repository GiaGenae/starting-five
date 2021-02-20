class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.text :public_key
      t.text :private_key
      t.references :owner_id
      t.string :password_digest
      t.string :api_key
      t.text :seed_phrase

      t.timestamps null: false
    end
  end
end
