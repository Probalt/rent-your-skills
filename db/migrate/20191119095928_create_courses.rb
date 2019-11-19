class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :duration
      t.string :location
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
