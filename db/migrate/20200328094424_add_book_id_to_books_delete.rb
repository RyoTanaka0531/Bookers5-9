class AddBookIdToBooksDelete < ActiveRecord::Migration[5.2]
  def change
    drop_table :add_book_id_to_books
  end
end
