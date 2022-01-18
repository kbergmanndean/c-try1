class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :artist
      t.string :clay
      t.string :glaze 
      t.integer :year
      t.timestamps
    end
  end
end
