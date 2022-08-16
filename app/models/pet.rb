class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'bird', 'rabbit']
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    days_ago = (Date.today - found_on).to_i
    "Found #{days_ago} #{days_ago == 1 ? 'day' : 'days'} ago"
  end
end
