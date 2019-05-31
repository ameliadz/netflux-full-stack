class Movie < ApplicationRecord
  has_many :xrefs
  has_many :subscriptions, through: :xrefs
end
