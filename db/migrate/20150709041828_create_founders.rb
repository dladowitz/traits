class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :name
      t.string :imgae_url
      t.string :quote

      t.timestamps null: false
    end
  end
end
