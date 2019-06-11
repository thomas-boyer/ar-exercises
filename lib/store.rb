
class Store < ActiveRecord::Base

  has_many :employees

  validate :has_mens_or_womens?
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}

  before_destroy :has_multiple_employees?

  private

  def has_mens_or_womens?
    if !self.mens_apparel && !self.womens_apparel
      errors.add(:mens_apparel, "Must carry mens or womens clothing")
      errors.add(:womens_apparel, "Must carry mens or womens clothing")
    end
  end

  def has_multiple_employees?
    if self.employees.size > 0
      errors.add(:employees, "Cannot destroy store with at least 1 employee")
      throw(:abort)
    end
  end
end
