class AddStatusToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :status, :integer
  end
end
