module Activatable
  extend ActiveSupport::Concern

  included do
    scope :activated, ->{ where(activated: true)  }
  end
end
