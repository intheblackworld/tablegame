class Game < ActiveRecord::Base
	has_many :counts, dependent: :destroy
end
