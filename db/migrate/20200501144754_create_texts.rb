class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.references :recipient
      t.references :text_template
      t.text :body
      t.timestamps
    end
  end
end
