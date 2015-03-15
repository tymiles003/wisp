class AddLinkToEVents < ActiveRecord::Migration
  def change
  add_column :events, :tickets, :string
  add_column :events, :speakers, :text 
  add_column :events, :info, :text 

  end
end
