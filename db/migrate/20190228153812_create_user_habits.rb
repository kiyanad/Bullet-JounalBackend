class CreateUserHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :user_habits do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :habit, foreign_key: true
      t.string :name
      t.string :author
      t.string :shortname
      t.boolean :status
      t.integer :frequency

      t.timestamps
    end
  end
end
