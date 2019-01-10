class DropViews < ActiveRecord::Migration[5.2]
  def change
    drop_table :views
  end
end
