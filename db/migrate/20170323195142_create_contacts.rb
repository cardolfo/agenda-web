class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :cellphone

      t.timestamps
    end
  end
end
