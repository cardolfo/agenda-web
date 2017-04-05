class AddFieldsIntoContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :address, :string
    add_column :contacts, :birthdate, :date
  end
end
