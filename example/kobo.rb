require File.expand_path(File.dirname(__FILE__) + '/helper')

# Kobo Ebook Search API (version:2013-10-10)
res = Rakuten::Api.get(Rakuten::Api::Kobo::Search,{:koboGenreId => "101"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Kobo Genre Search API (version:2013-10-10)
res = Rakuten::Api.get(Rakuten::Api::Kobo::GenreSearch,{:koboGenreId => "101"})
res["children"].each do |v|
  p v["child"]["koboGenreName"]
end
