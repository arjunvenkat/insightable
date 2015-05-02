json.array!(@pictures) do |picture|
  json.extract! picture, :id, :pictureable_id, :pictureable_type, :caption
  json.url picture_url(picture, format: :json)
end
