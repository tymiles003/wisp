class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :kind
      t.string :sponsor
      t.string :location

      t.timestamps
    end
  end
end
