require File.expand_path(File.dirname(__FILE__) + '/helper')

# Favorite Bookmark List API (version:2012-06-27)
res = Rakuten::Api.get(Rakuten::Api::Bookmark::List,{:hits => "10"})
res["items"].each do |v|
  p v["item"]["itemName"]
end

Favorite Bookmark Add API (version:2012-06-27)
res = Rakuten::Api.get(Rakuten::Api::Bookmark::Add,{:itemCode => "donya:10657590"})
p res["bookmarkId"]

# Favorite Bookmark Delete API (version:2012-06-27)
res = Rakuten::Api.get(Rakuten::Api::Bookmark::Delete,{:bookmarkId => "4639852"})
p res["affectedCount"]
