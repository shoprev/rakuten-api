require File.expand_path(File.dirname(__FILE__) + '/helper')

# Books Total Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::TotalSearch,{:booksGenreId => "000"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Book Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::BookSearch,{:booksGenreId => "001004008"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books CD Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::CdSearch,{:booksGenreId => "002"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books DVD Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::DvdSearch,{:booksGenreId => "003"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Foreign Book Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::ForeignBookSearch,{:booksGenreId => "005407"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Magazine Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::MagazineSearch,{:booksGenreId => "007604001"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Game Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::GameSearch,{:booksGenreId => "006"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Software Search API (version:2013-05-22)
res = Rakuten::Api.get(Rakuten::Api::Books::SoftwareSearch,{:booksGenreId => "004"})
res["Items"].each do |v|
  p v["Item"]["title"]
end

# Books Genre Search API (version:2012-11-28)
res = Rakuten::Api.get(Rakuten::Api::Books::GenreSearch,{:booksGenreId => "000"})
res["children"].each do |v|
  p v["child"]["booksGenreName"]
end
