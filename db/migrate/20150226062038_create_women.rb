class CreateWomen < ActiveRecord::Migration
  def change
    create_table :women do |t|
      t.string :name
      t.string :website
      t.string :status

      t.timestamps
    end
  end
end
