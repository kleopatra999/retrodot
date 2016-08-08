module Mediators::Incident
  class Syncher < Mediators::Base
    def call
      puts 'hi'
      # log(fn: "call", ...)
    end
  end
end
