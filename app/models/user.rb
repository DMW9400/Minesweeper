class User < ApplicationRecord
  has_many :sessions
  has_many :grids, through: :sessions
end
