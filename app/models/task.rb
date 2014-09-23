class Task < ActiveRecord::Base
  validates :title, :start, presence: true
  validates :title, length: { maximum: 100 }
  validates :description, length: { maximum: 255, allow_blank: true }
end
