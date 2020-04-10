class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :name
      t.string :description
      t.references :location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :day
      t.string :icon
      t.boolean :completed
    end
  end
end
