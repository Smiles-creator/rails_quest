class Mission < ApplicationRecord
  belongs_to :agent

  validates :title, presence: true
  validates :status, presence: true

  # Правильный enum для Rails 8:
    enum :status, [:planned, :in_progress, :completed, :failed]
end