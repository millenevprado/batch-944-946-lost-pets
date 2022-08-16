class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'bird', 'rabbit']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
