class CreateExpends < ActiveRecord::Migration[7.2]
  def change
    create_table :expends do |t|
      t.string :description
      t.decimal :amount
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
