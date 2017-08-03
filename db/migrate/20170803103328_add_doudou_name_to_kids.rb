class AddDoudouNameToKids < ActiveRecord::Migration[5.0]
  def change
    add_column :kids, :doudou_name, :string
  end
end
