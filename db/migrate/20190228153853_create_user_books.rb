class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :author
      t.string :shortname
      t.boolean :status

      t.timestamps
    end
  end
end
