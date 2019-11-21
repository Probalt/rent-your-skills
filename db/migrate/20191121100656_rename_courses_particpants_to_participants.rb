class RenameCoursesParticpantsToParticipants < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :participants, :integer
  end
end
