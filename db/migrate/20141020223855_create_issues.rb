class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :who_experienced
      t.string :patron_verify
      t.string :location
      t.string :os
      t.string :browser
      t.string :opac_error
      t.string :name_of_db
      t.string :source
      t.text :description
      t.string :patron_name
      t.string :patron_email
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
