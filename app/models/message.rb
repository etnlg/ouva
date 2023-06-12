class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user, optional: true
  belongs_to :owner, optional: true
end
