class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.references :user
      t.string :name
      t.string :student_name
      t.string :student_grade
      t.string :phone_number
      t.timestamps
    end
  end
end
