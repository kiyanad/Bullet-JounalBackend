class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.string :time_expected
      t.string :image_url

      t.timestamps
    end
  end
end
