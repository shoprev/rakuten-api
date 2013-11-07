require File.expand_path(File.dirname(__FILE__) + '/helper')

# Travel Search API (version:2013-10-24)
res = Rakuten::Api.get(Rakuten::Api::Travel::Search,{:largeClassCode => "japan",:middleClassCode => "hokkaido",:smallClassCode => "sapporo",:detailClassCode => "A"})
res['Body']['SimpleHotelSearch']['hotel'].each do |v|
  p v['hotelBasicInfo']["hotelName"]
end

# # Travel Detail Search API (version:2013-10-24)
# res = Rakuten::Api.get(Rakuten::Api::Travel::DetailSearch,{:hotelNo => "142610"})
# res['Body']['HotelDetailSearch']['hotel'].each do |v|
#   p v['hotelBasicInfo']["hotelName"]
# end

# # Travel Vacant Search API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::VacantSearch,{:checkinDate => "2013-09-26",:checkoutDate => "2013-09-27",:largeClassCode => "japan",:middleClassCode => "hokkaido",:smallClassCode => "sapporo",:detailClassCode => "A"})
# res["Body"]["hotel"].each do |v|
#   p v["hotelInfo"][0]["hotelBasicInfo"]["hotelName"]
# end

# # Travel Area Code API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::AreaCode)
# res["Body"]["GetAreaClassInfo"]["largeClass"]["middleClass"].each do |v|
#   p v["smallClass"]
# end

# # Travel Keyword Search API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::KeywordSearch,{:keyword => 'au'})
# res['Body']['KeywordHotelSearch']['hotel'].each do |v|
#   p v["hotelBasicInfo"]["hotelName"]
# end

# # Travel Chain List API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::ChainList)
# res["Body"]["GetHotelChainList"]["hotelChainList"][0]["hotelChain"].each do |v|
#   p v["hotelChainName"]
# end

# # Travel Ranking API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::Ranking,{:genre => "all"})
# res["Body"]["HotelRanking"]["ranking"][0]["hotelRankInfo"].each do |v|
#   p v["hotelName"]
# end
