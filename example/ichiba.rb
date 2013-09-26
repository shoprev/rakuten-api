require File.expand_path(File.dirname(__FILE__) + '/helper')

# Ichiba Item Search API (version:2013-08-05)
res = Rakuten::Api.get(Rakuten::Api::Ichiba::Search,{:genreId => "101240"})
res["Items"].each do |v|
  p v["Item"]["itemName"]
end

# Ichiba Genre Search API (version:2012-07-23)
res = Rakuten::Api.get(Rakuten::Api::Ichiba::GenreSearch,{:genreId => "101240"})
res["children"].each do |v|
  p v["child"]["genreName"]
end

# Ichiba Item Ranking API (version:2012-09-27)
res = Rakuten::Api.get(Rakuten::Api::Ichiba::Ranking,{:genreId => "101240"})
res["Items"].each do |v|
  p v["Item"]["itemName"]
end
