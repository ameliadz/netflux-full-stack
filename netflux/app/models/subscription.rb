class Subscription < ApplicationRecord
  has_many :xrefs
  has_many :movies, through: :xrefs
  has_many :customers
end
