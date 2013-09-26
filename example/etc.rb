require File.expand_path(File.dirname(__FILE__) + '/helper')

# Dynamic Ad API
res = Rakuten::Api.get(Rakuten::Api::Etc::DynamicAd,{:url => 'http://plaza.rakuten.co.jp/isblog/diary/200705230001/'})
res["Body"]["Ads"]["Ad"].each do |v|
  p v["ItemName"]
end

# Dynamic Ad Travel API
res = Rakuten::Api.get(Rakuten::Api::Etc::DynamicAdTravel,{:url => 'http://plaza.rakuten.co.jp/travelblog02/diary/200706140000/'})
res["Body"]["Ads"]["Ad"].each do |v|
  p v["HotelName"]
end

# High Commission Shop API (version:2012-03-13)
res = Rakuten::Api.get(Rakuten::Api::Etc::HighCommissionShop,{:hits => '10'})
res["Body"]["HighCommissionShop"]["Shops"]["Shop"].each do |v|
  p v["shopName"]
end
