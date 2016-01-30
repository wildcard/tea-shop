class AddLinkToTeas < ActiveRecord::Migration
  def change
    add_column :teas, :link, :string
  end
end
