class HighScore < ApplicationRecord
  validates_presence_of :name, :wpm, :accuracy
end
