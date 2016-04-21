class Company < ActiveRecord::Base
  has_many :products

  validates :name,
            :activated,
            presence: true

  def to_s
    name
  end
end
