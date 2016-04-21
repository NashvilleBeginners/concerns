module Searchable
  extend ActiveSupport::Concern

  module ClassMethods
    def search(query)
      if query
        where("name ilike ?", "%#{query}%")
      else
        all
      end
    end
  end
end
