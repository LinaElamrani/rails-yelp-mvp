# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: 0..5

  def new
    @review = Review.new
  end
end
