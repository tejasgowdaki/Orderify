class Role < ActiveRecord::Base
	validates :name, presence: true

	has_many :permissions
	has_many :users, through: :permissions
end
