require File.expand_path(File.dirname(__FILE__) + '/helper')

# Recipe Category List API (version:2012-11-21)
res = Rakuten::Api.get(Rakuten::Api::Recipe::CategoryList,{:categoryType => "large"})
res["result"]["large"].each do |v|
  p v["categoryName"]
end

# Recipe Category Ranking API (version:2012-11-21)
res = Rakuten::Api.get(Rakuten::Api::Recipe::CategoryRanking,{:categoryId => "10"})
res["result"].each do |v|
  p v["recipeTitle"]
end
