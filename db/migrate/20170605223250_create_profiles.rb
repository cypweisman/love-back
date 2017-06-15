class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.integer :age, null: false

      t.timestamps
    end
  end
end
