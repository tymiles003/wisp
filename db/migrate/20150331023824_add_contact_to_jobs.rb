class AddContactToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :contact, :string
  	add_column :jobs, :title, :string
  	add_column :jobs, :location, :string 
  	add_column :jobs, :reqs, :text
  end
end
