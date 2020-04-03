class AddUserToVocabs < ActiveRecord::Migration[5.2]
  def change
    add_reference :vocabs, :user, foreign_key: true
  end
end
