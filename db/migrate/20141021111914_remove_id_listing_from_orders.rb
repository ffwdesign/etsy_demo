class RemoveIdListingFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :id_listing, :integer
  end
end
