class MailingList < ActiveRecord::Base
  belongs_to :contact
  belongs_to :sendable, :polymorphic => true
end
