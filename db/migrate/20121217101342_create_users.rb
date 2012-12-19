class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :contact_email
      t.integer :contact_phone
      t.boolean :Admin

      t.timestamps
    end
  end
end
