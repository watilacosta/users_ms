class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :digest_password
      t.string :cpf, limit: 11, null: false

      t.timestamps
      t.index :cpf, unique: true
    end
  end
end
