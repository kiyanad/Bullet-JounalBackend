class CreateUserInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :user_instances do |t|
      t.belongs_to :user_habit, foreign_key: true
      t.boolean :status
      t.string :date

      t.timestamps
    end
  end
end
