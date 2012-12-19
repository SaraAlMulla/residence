class Message < ActiveRecord::Base
  attr_accessible :body, :date_read, :date_sent, :receiver_id, :sender_id, :subject
  
  
  belongs_to :user
  
  
validates :date_read, :presence => true
validates :date_sent, :presence => true
validates :receiver_id, :presence => true
validates :sender_id, :presence => true
validates :subject, :presence => true 

end
