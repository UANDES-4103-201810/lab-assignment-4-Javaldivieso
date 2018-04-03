class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets
  before_create :validate_dates
  validates :place, uniqueness: { scope: :start_date }
  def validate_dates
   if DateTime.now < self.start_date
	return false
   end
  end
end
