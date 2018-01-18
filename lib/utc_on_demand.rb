require "utc_on_demand/version"
require 'time'

module UtcOnDemand
  class Presenter
    def self.display(override_timestamp = nil)
      time = Time.now

      if override_timestamp
        time = Time.parse(override_timestamp)
      end

      puts "#{time.zone}: #{time}"
      puts "UTC: #{time.utc}"
    end
  end
end