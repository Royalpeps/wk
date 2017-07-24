class CreateKids < ActiveRecord::Migration[5.0]
  def change
    create_table :kids do |t|

      t.string :first_name
      t.string :last_name
      t.datetime :birthday

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
