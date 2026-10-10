module Trade
  class OrderCleanJob < ApplicationJob

    def perform
      Order.where(agent_id: nil).expired.where(state: ['init']).update(state: 'closed')
    end

  end
end
