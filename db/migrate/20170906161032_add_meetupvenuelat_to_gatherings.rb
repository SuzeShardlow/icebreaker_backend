class AddMeetupvenuelatToGatherings < ActiveRecord::Migration[5.1]
  def change
    add_column :gatherings, :meetupvenuelat, :float
    add_column :gatherings, :meetupvenuelong, :float
  end
end
