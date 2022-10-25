# frozen_string_literal: true

module Teams
  class TeamMember < ApplicationRecord
    belongs_to :team
  end
end
