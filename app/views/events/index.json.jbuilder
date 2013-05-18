json.array!(@events) do |event|
  json.extract! event, :name, :startdate, :enddate, :description, :agegroup, :location, :registration_url, :information_url
  json.url event_url(event, format: :json)
end