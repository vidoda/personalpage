class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :naturality
      t.date :dob
      t.string :gender
      t.string :email
      t.string :residence
      t.integer :cp
      t.integer :cellphone
      t.string :occupation
      t.text :comentary
      t.string :city
      t.string :country
      t.string :emergency

      t.timestamps
    end
  end
end
