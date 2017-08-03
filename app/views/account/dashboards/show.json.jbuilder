json.array! @events do |event|
  json.extract! event, :title
  json.start event[:start]
  json.end event[:end]
  json.color event[:color]
end
