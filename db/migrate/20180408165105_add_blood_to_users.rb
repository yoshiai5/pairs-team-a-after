class AddBloodToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :blood, foreign_key: true
  end
end
