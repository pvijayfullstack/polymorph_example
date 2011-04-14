module Sendable
  def self.included(klass)
    klass.instance_eval do
      has_one :mailing_list, :as => :sendable
      alias_method_chain :mailing_list, :autocreate

      [:silverpop_id, :contact, :created_at, :updated_at].each do |method|
        delegate method, "#{method}=", :to => :mailing_list
      end
    end
  end

  def mailing_list_with_autocreate
    mailing_list_without_autocreate || build_mailing_list
  end
end
