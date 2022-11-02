# frozen_string_literal: true

class Booking < ApplicationRecord
  has_many :passengers
  belongs_to :flight, optional: true
  accepts_nested_attributes_for :passengers
end
