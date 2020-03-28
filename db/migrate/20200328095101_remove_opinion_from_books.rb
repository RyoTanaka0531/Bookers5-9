class RemoveOpinionFromBooks < ActiveRecord::Migration[5.2]
  def change
    drop_table :remove_opinion_from_books
  end
end
