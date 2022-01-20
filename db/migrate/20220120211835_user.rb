class User < ActiveRecord::Migration[6.1]
  def change
    t.string :username
    t.string :password_digest
  end
end
