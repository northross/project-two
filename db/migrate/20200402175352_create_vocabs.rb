class CreateVocabs < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabs do |t|
      t.string :word
      t.string :definition
      t.string :sounds_like
      t.string :synonyms
      t.string :antonyms
      t.string :sentence

      t.timestamps
    end
  end
end
