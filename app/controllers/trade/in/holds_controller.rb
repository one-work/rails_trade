module Trade
  class In::HoldsController < Admin::HoldsController

    private
    def hold_params
      super.merge! status: 'received'
    end

  end
end

