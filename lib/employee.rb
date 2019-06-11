class Employee < ActiveRecord::Base
  belongs_to :Store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, presence: true

  before_save :create_password

  private
  def create_password
    self.password = (0...8).map { (33 + rand(94)).chr }.join
  end
end
