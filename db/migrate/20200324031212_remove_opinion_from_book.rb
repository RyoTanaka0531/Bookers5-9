class RemoveOpinionFromBook < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :opinion, :integer
  end
end
