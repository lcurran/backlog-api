class Library < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
end
