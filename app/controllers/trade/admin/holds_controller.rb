module Trade
  class Admin::HoldsController < Admin::BaseController
    before_action :set_item
    before_action :set_new_hold, only: [:new, :create]

    def index
      @holds = @item.holds.page(params[:page])
    end

    private
    def set_item
      @item = Item.find params[:item_id]
    end

    def set_new_hold
      @hold = @item.holds.build(hold_params)
    end

    def hold_params
      params.fetch(:hold, {}).permit(
        :number,
        :produce_on,
        :rent_start_at,
        :rent_finish_at
      )
    end

  end
end
