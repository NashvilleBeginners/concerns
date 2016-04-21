class Product < ActiveRecord::Base
  belongs_to :company

  validates :name,
            :company,
            :activated,
            presence: true

  def self.search(query)
    if query
      where("name ilike ?", "%#{query}%")
    else
      all
    end
  end
end
