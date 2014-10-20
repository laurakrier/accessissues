json.array!(@issues) do |issue|
  json.extract! issue, :id, :who_experienced, :patron_verify, :location, :os, :browser, :opac_error, :name_of_db, :source, :description, :patron_name, :patron_email, :name, :date
  json.url issue_url(issue, format: :json)
end
