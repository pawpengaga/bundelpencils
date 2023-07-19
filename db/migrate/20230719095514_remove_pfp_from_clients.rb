class RemovePfpFromClients < ActiveRecord::Migration[7.0]
  def change
    remove_column :clients, :pfp
  end
end
