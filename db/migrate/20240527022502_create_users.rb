class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false#added null: false to the end of the line so that the migration will not run if there is no email
      t.string :password_digest

      t.timestamps
    end
  end
end
