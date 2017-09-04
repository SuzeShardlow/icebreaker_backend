class CreateMeetupgroups < ActiveRecord::Migration[5.1]
  def change
    create_table :meetupgroups do |t|
      t.text :name
      t.text :url

      t.timestamps
    end
  end
end
