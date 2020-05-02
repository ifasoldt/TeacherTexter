class CreateTextTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :text_templates do |t|
      t.references :user
      t.text :body
      t.datetime :send_at
      t.timestamps
    end
  end
end
