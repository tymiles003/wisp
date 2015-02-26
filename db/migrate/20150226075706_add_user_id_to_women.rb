class AddUserIdToWomen < ActiveRecord::Migration
  def change
  	add_column :women, :user_id, :integer

  end
end
