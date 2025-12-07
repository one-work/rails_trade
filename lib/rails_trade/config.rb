module RailsTrade
  mattr_accessor :config, default: ActiveSupport::OrderedOptions.new

  config.default_currency = 'CNY'
  config.disabled_models = []
  config.expire_after = 2.hour
end
