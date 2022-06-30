class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :id
      t.string :title
      t.string :contact_email

      t.timestamps
    end
  end
end
