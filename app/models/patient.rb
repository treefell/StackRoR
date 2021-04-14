class Patient < ApplicationRecord
    validates :name, length:{maximum:64}, presence: true
    validates :comment, default: ""

    belongs_to :user
end
