class AddDateAndTimeToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :startsat, :datetime 
  end
end
