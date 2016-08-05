require 'spec_helper'

describe IncidentsController do
  let(:data) {
              {
                "id": 3227,
                "created_at": "2016-08-03T21:24:21.541Z",
                "updated_at": "2016-08-03T21:24:23.822Z",
                "incident_id": 928,
                "contents": "We have received reports of increased failure rates during Postgres provisions. We are investigating the issue.",
                "title": "Issues with Heroku Postgres provisioning",
                "update_type": "issue",
                "services": [
                  "Heroku Postgres"
                ]
              }
             }

   describe "sync endpoint" do
     it 'recieves the post data' do
        post :sync, params: data

        expect(response.status).to eq 200
     end
   end
end
