class AddAdminVotesToImages < ActiveRecord::Migration
  def change
    add_column :images, :trash, :boolean, default: false
    add_column :images, :main_page, :boolean, default: false
  end
end
