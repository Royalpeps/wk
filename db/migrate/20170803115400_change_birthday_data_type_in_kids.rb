class ChangeBirthdayDataTypeInKids < ActiveRecord::Migration[5.0]
  def change
    change_column :kids, :birthday, :date
  end
end
