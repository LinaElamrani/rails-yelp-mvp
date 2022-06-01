# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w[chinese italian japanese french belgian].freeze
  validates :category, inclusion: { in: CATEGORY }
  validates :name, :address, :category, presence: true
end
