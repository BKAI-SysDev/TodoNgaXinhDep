class Todo < ApplicationRecord
  has_many :items
  validate :check_complete_items 

  def check_complete_items 
    errors.add(:status, "All items must be completed first") if self.items.any? { |item| !item.status }
  end
end
