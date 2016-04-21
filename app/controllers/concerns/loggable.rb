module Loggable
  extend ActiveSupport::Concern

  included do
    before_filter :log_some_stuff
  end

  def log_some_stuff
    puts '*' * 10
    puts '*' * 10
    puts '*' * 10
  end
end
