class CreateCurses < ActiveRecord::Migration[7.0]
  def change
    create_table :curses do |t|
      t.references :power, null: false, foreign_key: true
      t.references :monster, null: false, foreign_key: true

      t.timestamps
    end
  end
end
