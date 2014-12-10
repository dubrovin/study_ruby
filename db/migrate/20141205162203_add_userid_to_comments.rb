class AddUseridToComments < ActiveRecord::Migration
  def change
    change_table(:comments) do |t|
      t.integer :user_id #, null: false
    end
  end
end
