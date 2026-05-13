class Agent < ApplicationRecord
  has_many :missions, dependent: :destroy
  has_many :agent_skills, dependent: :destroy
  has_many :skills, through: :agent_skills  # Связь "через" таблицу-связку

  # Валидации
  validates :codename, presence: true, uniqueness: true
  validates :level, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end