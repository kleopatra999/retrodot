class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.date       :created
      t.date       :resolved
      t.integer    :duration
      t.string     :state
      t.string     :title
      t.integer    :issue
      t.boolean    :public_followup
      t.date       :public_followup_date
      t.timestamps null: false
    end
  end
end
