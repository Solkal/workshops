class AddUsersVotesToImages < ActiveRecord::Migration
  def change
    add_column :images, :like, :integer, default: 0
    add_column :images, :dislike, :integer, default: 0
  end
end
