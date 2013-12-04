require File.expand_path(File.dirname(__FILE__) + '/helper')

# Auction Genre Search API (version:2012-09-27)
res = Rakuten::Api.get(Rakuten::Api::Auction::GenreSearch,{:auctionGenreId => "0"})
res["children"].each do |v|
  p v["child"]["genreName"]
end

# Auction Genre Keyword Search API (version:2012-09-27)
res = Rakuten::Api.get(Rakuten::Api::Auction::GenreKeywordSearch,{:keyword => "CD"})
res["auctionGenreList"].each do |v|
  p v["fullGenrePath"]
end

# Auction Item Search API (version:2013-09-05)
res = Rakuten::Api.get(Rakuten::Api::Auction::Search,{:keyword => "CD"})
res["Items"].each do |v|
  p v["Item"]["itemName"]
end

# Auction Item Code Search API (version:2012-10-10)
res = Rakuten::Api.get(Rakuten::Api::Auction::CodeSearch,{:itemCode => "i:mycloset:10006143"})
res["Items"].each do |v|
  p v["Item"]["itemName"]
end

