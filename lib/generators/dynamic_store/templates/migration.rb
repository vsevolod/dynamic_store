class CreateDynamycStoreDictionaries < ActiveRecord::Migration
  def change
    create_table :dynamic_store_dictionaries do |t|
      t.string  :name, null: false
      t.string  :value
      t.string  :tag
      t.string  :ancestry
      t.integer :ancestry_depth
      t.jsonb   :data
      t.integer :position
      t.boolean :available, null: false, default: true

      t.timestamps null: false
    end
  end
end
