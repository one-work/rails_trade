module Trade
  class Order < ApplicationRecord
    include Model::Order
    include Print::Order
    if defined? RailsCrm
      include Crm::Ext::Maintainable
    end
    if defined? RailsAudit
      include Auditor::Ext::Discard
      include Auditor::Ext::Audited
    end
    if defined? RailsNotice
      include Notice::Order
    end
    if defined? RailsShip
      include Ship::Ext::Order
    end
    if defined? RailsSpace
      include Space::Ext::Order
    end

    def payment_memo_id
      nil
    end

  end
end
