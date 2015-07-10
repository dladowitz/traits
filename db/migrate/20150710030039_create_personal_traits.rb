class CreatePersonalTraits < ActiveRecord::Migration
  def change
    create_table :personal_traits do |t|
      t.integer :founder_id, index: true
      t.integer :trait_id,   index: true

      t.timestamps null: false
    end
  end
end
