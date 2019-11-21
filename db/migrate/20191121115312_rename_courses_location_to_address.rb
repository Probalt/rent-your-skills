class RenameCoursesLocationToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :courses, :location, :address
  end
end
