require_relative "../base"

module Mediators::Incident
  class Sync < Mediators::Base
    def call
      # log(fn: "call", ...)
      fetch_incident

    rescue Excon::Errors::Error
      # log($!, fn: call, at: "fetch_incident")
    end

  private
    def fetch_incident
      # Excon.new(Config.fetch_incident_url).request(
      Excon.new("https://status.heroku.com/api/v4/issues/788").request(
        method:       :get,
        expects:      200,
        idempotent:   true,
        )
      end
    end
  end
end
