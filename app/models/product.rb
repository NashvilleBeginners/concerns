class Product < ActiveRecord::Base
  belongs_to :company

  def self.search(query)
    if query
      where("name ilike ?", "%#{query}%")
    else
      all
    end
  end
end
