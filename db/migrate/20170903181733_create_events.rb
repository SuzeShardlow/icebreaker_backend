class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :eventid
      t.text :name
      t.string :status
      t.integer :time
      t.integer :duration
      t.text :link
      t.text :description

      t.timestamps
    end
  end
end
