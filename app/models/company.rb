class Company < ActiveRecord::Base
  include Activatable
  include Searchable

  has_many :products

  validates :name,
            presence: true

  def to_s
    name
  end
end
