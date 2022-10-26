# frozen_string_literal: true

class PlayerGame < ApplicationRecord
  belongs_to :game
  belongs_to :team
  belongs_to :user
end
