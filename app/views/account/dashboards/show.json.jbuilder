json.array! @events do |event|
  json.start event[:start]
  json.end event[:end]
end
