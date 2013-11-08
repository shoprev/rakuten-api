require File.expand_path(File.dirname(__FILE__) + '/helper')

# # Travel Search API (version:2013-10-24)
# res = Rakuten::Api.get(Rakuten::Api::Travel::Search,{:largeClassCode => "japan",:middleClassCode => "hokkaido",:smallClassCode => "sapporo",:detailClassCode => "A"})
# res['hotels'].each do |v|
#   p v['hotel'][0]['hotelBasicInfo']["hotelName"]
# end

# # Travel Detail Search API (version:2013-10-24)
# res = Rakuten::Api.get(Rakuten::Api::Travel::DetailSearch,{:hotelNo => "142610"})
# res['hotels'].each do |v|
#   p v['hotel'][0]['hotelBasicInfo']["hotelName"]
# end

# # Travel Vacant Search API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::VacantSearch,{:checkinDate => "2013-11-08",:checkoutDate => "2013-11-09",:largeClassCode => "japan",:middleClassCode => "hokkaido",:smallClassCode => "sapporo",:detailClassCode => "A"})
# res['hotels'].each do |v|
#   p v['hotel'][0]['hotelBasicInfo']["hotelName"]
# end

# # Travel Area Code API (version:2013-10-24)           
# res = Rakuten::Api.get(Rakuten::Api::Travel::AreaCode)
# res['areaClasses']['largeClasses'][0]['largeClass'][1]['middleClasses'][1]['middleClass'][1]['smallClasses'].each do |v|
#   p v['smallClass'][0]['smallClassName']
# end

# Travel Keyword Search API (version:2013-10-24)           
res = Rakuten::Api.get(Rakuten::Api::Travel::KeywordSearch,{:keyword => 'au'})
res['hotels'].each do |v|
  p v['hotel'][0]['hotelBasicInfo']["hotelName"]
end

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
