# frozen_string_literal: true

class Team < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :games, dependent: :destroy
end
