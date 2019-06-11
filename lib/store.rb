
class Store < ActiveRecord::Base

  has_many :employees

  def has_mens_or_womens?
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "Must carry mens or womens clothing")
      errors.add(:womens_apparel, "Must carry mens or womens clothing")
    end
  end

  validate :has_mens_or_womens?
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
end
