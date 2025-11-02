module Trade
  module Controller::In
    extend ActiveSupport::Concern
    include Controller::Application
    include Org::Controller::In if defined? RailsOrg

    def set_new_item
      @item = @cart.init_cart_item(params)
    end

  end
end
