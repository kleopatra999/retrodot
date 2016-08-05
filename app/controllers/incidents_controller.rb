class IncidentsController < ApplicationController
  protect_from_forgery except: :sync

  def index
    render text: "Welcome to Retrodot"
  end

  def sync
    logger.info(ns: self.class.name, fn: :sync, incident: params["incident_id"])

    #TODO Call the sync worker
    head :ok
  end
end
