require File.expand_path(File.dirname(__FILE__) + '/helper')

# Gora Search API (version:2013-11-13)
res = Rakuten::Api.get(Rakuten::Api::Gora::Search,{:areaCode => "1"})
res["Items"].each do |v|
  p v["Item"]["golfCourseName"]
end

# Gora Detail Search API (version:2013-11-13)
res = Rakuten::Api.get(Rakuten::Api::Gora::DetailSearch,{:golfCourseId => "70008"})
p res["Item"]["golfCourseName"]

# Gora Plan Search API (version:2013-11-13)
res = Rakuten::Api.get(Rakuten::Api::Gora::PlanSearch,{:areaCode => "1",:playDate => "2013-12-05"})
res["Items"].each do |v|
  p v["Item"]["golfCourseId"]
end  
