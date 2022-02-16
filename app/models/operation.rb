class Operation < ApplicationRecord
    belongs_to :user
    has_many :group_operation
end
