class CreateMonsters < ActiveRecord::Migration[7.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :image_url
      t.references :haunted_house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
