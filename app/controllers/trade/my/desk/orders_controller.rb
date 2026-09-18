module Trade
  class My::Desk::OrdersController < Admin::Desk::OrdersController

    def index
      q_params = {
        state: ['init']
      }
      q_params.merge! default_params
      q_params.merge! params.permit(:cart_id, :order_id, :good_type, :good_id, :desk_id, :aim, :address_id, :status)

      @order_s = Order.where(user_id: nil).default_where(q_params)
      @orders = @order_s.includes(items: { good: { logo_attachment: :blob } }).order(id: :desc).page(params[:page]).per(params[:per])
    end

  end
end
