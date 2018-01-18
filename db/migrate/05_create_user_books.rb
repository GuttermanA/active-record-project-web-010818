class CreateUserBooks < ActiveRecord::Migration[4.2]
  def change
    create_table :user_books do |t|
      t.boolean :returned
      t.datetime :due_date
      t.integer :book_id
      t.integer :user_id
    end
  end
end
