class Detail < ApplicationRecord
    belongs_to :department
    validates :title,:description,:objective,:analytics,:expected_deadline, presence: true
end
