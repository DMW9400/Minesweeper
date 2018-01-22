class Session < ApplicationRecord
  has_many :grids
  belongs_to :user

end
