class Product < ActiveRecord::Base
  include Activatable
  include Searchable

  belongs_to :company

  validates :name,
            :company,
            presence: true
end
