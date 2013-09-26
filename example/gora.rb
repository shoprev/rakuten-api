require File.expand_path(File.dirname(__FILE__) + '/helper')

# Gora Search API (version:2010-06-30)
res = Rakuten::Api.get(Rakuten::Api::Gora::Search,{:areaCode => "1"})
res["Body"]["GoraGolfCourseSearch"]["Items"]["Item"].each do |v|
  p v["golfCourseName"]
end

# Gora Detail Search API (version:2010-06-30)
res = Rakuten::Api.get(Rakuten::Api::Gora::DetailSearch,{:golfCourseId => "70008"})
res["Body"]["GoraGolfCourseDetail"]["Item"].each do |v|
  p v["golfCourseName"]
end  

# Gora Plan Search API (version:2012-12-10)
res = Rakuten::Api.get(Rakuten::Api::Gora::PlanSearch,{:areaCode => "1",:playDate => "2013-09-28"})
res["Body"]["GoraPlanSearch"]["Items"]["Item"].each do |v|
  p v["golfCourseId"]
end  
