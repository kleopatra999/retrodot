Rails.application.routes.draw do
  post "/incidents/sync" => "incidents#sync"

  root to: 'incidents#index'
end
