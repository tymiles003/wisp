class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :description
      t.string :website
      t.text :info

      t.timestamps
    end
  end
end
