class CreateRatings < ActiveRecord::Migration
  
  def change
    
    create_table :users do |t|
      t.string :name
      t.timestamps null: false
    end
    
    create_table :things do |t|
      t.string :name
      t.timestamps null: false
    end
    
    create_table :ratings do |t|
      t.belongs_to :user, index: true
      t.belongs_to :thing, index: true
      t.boolean :good
      t.timestamps null: false
    end
  end
end