require File.expand_path(File.dirname(__FILE__) + '/helper')

# Dynamic Ad API
res = Rakuten::Api.get(Rakuten::Api::Etc::DynamicAd,{:url => 'http://plaza.rakuten.co.jp/isblog/diary/200705230001/'})
p res
# res["children"].each do |v|
#   p v["child"]["genreName"]
# end

# Dynamic Ad Travel API

# High Commission Shop API (version:2012-03-13)
