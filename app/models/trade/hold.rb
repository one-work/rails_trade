module Trade
  class Hold < ApplicationRecord
    include Model::Hold
    include Job::Ext::Jobbed
    if defined? RailsFactory
      include Factory::Ext::Hold
    end
  end
end
