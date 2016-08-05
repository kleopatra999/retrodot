class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.date       :date
      t.string     :title
      t.integer    :issue

      t.timestamps null: false
    end

    create_table :remediations do |t|
      t.date       :date
      t.string     :description
      t.boolean    :completed
      t.string     :pull_request
      t.timestamps null: false

      t.belongs_to :retrospective
    end

    create_table :retrospectives do |t|
      t.date       :date
      t.string     :description
      t.timestamps null: false

      t.belongs_to :incident
      t.belongs_to :remediation
    end
  end
end
