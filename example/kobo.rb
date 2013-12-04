require File.expand_path(File.dirname(__FILE__) + '/helper')

# # Ichiba Item Search API (version:2013-08-05)
# res = Rakuten::Api.get(Rakuten::Api::Ichiba::Search,{:genreId => "101240"})
# res["Items"].each do |v|
#   p v["Item"]["itemName"]
# end

# Kobo Genre Search API (version:2013-10-10)
res = Rakuten::Api.get(Rakuten::Api::Kobo::GenreSearch,{:koboGenreId => "101"})
res["children"].each do |v|
  p v["child"]["koboGenreName"]
end
