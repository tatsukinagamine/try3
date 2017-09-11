class CreateGens < ActiveRecord::Migration
  def change
    create_table :gens do |t|
      t.text :content
      
      t.timestamps null: false
    end
  end
end
