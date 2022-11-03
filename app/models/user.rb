# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :team, optional: true
end
