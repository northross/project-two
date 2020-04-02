class VocabSerializer < ActiveModel::Serializer
  attributes :id, :word, :definition, :sounds_like, :synonyms, :antonyms, :sentence
  belongs_to :user
end
