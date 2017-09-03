class AddEventidToComments < ActiveRecord::Migration[5.1]
  def change
    add_reference :comments, :event, foreign_key: true
  end
end
