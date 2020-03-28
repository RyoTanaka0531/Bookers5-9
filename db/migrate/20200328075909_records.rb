class Records < ActiveRecord::Migration[5.2]
  def change
    drop_table "add_body_t_books"
  end
end
