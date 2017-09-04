class CreateGatherings < ActiveRecord::Migration[5.1]
  def change
    create_table :gatherings do |t|
      t.integer :duration
      t.string :eventid
      t.text :name
      t.string :status
      t.string :time
      t.text :groupname
      t.text :link
      t.string :meetupvenuename
      t.integer :meetupvenuelat
      t.integer :meetupvenuelong
      t.string :meetupvenueaddress
      t.timestamps
    end
  end
end
