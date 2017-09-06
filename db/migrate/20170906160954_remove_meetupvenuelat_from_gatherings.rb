class RemoveMeetupvenuelatFromGatherings < ActiveRecord::Migration[5.1]
  def change
    remove_column :gatherings, :meetupvenuelat, :bigint
    remove_column :gatherings, :meetupvenuelong, :bigint
  end
end
