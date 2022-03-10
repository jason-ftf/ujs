class Movie < ApplicationRecord
  enum status: [:missed, :watched]
end
