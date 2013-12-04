# Rakuten::Api

[![Gem Version](https://badge.fury.io/rb/rakuten-api.png)](http://badge.fury.io/rb/rakuten-api)
Ruby Rakuten Web API fully supported

## Installation

Add this line to your application's Gemfile:

    gem 'rakuten-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rakuten-api

## Usage

```ruby
require "rakuten/api"

# configure
Rakuten::Api.configure do |options|
  options[:applicationId] = 'your api id'
  options[:affiliate_id] = "your affiliate id"
end

# Ichiba Item Search API (version:2013-08-05)
res = Rakuten::Api.get(Rakuten::Api::Ichiba::Search,{:genreId => "101240"})
p res.code # 200
p res.message # "OK"
res["Items"].each do |v|
  name = v["Item"]["itemName"]
  ...
end
```

See the [examples directory](https://github.com/shoprev/rakuten-api/tree/master/example) for more usage.

```ruby
# Rakuten Ichiba API
Rakuten::Api::Ichiba::Search      # Ichiba Item Search API (version:2013-08-05)
Rakuten::Api::Ichiba::GenreSearch # Ichiba Genre Search API (version:2012-07-23)
Rakuten::Api::Ichiba::Ranking     # Ichiba Item Ranking API (version:2012-09-27)
# Rakuten Product API
Rakuten::Api::Product::Search       # Product Search API (version:2010-11-18)
Rakuten::Api::Product::DetailSearch # Product Detail Search API (version:2011-07-14)
Rakuten::Api::Product::GenreSearch  # Product Genre Search API (version:2010-11-18)           
# Rakuten Books API
Rakuten::Api::Books::TotalSearch       # Books Total Search API (version:2013-05-22)
Rakuten::Api::Books::BookSearch        # Books Book Search API (version:2013-05-22)
Rakuten::Api::Books::CdSearch          # Books CD Search API (version:2013-05-22)
Rakuten::Api::Books::DvdSearch         # Books DVD Search API (version:2013-05-22)
Rakuten::Api::Books::ForeignBookSearch # Books Foreign Book Search API (version:2013-05-22)
Rakuten::Api::Books::MagazineSearch    # Books Magazine Search API (version:2013-05-22)
Rakuten::Api::Books::GameSearch        # Books Game Search API (version:2013-05-22)
Rakuten::Api::Books::SoftwareSearch    # Books Software Search API (version:2013-05-22)
Rakuten::Api::Books::GenreSearch       # Books Genre Search API (version:2012-11-28)
# Rakuten Auction API
Rakuten::Api::Auction::GenreSearch        # Auction Genre Search API (version:2012-09-27)
Rakuten::Api::Auction::GenreKeywordSearch # Auction Genre Keyword Search API (version:2012-09-27)
Rakuten::Api::Auction::Search             # Auction Item Search API (version:2013-09-05)
Rakuten::Api::Auction::CodeSearch         # Auction Item Code Search API (version:2012-10-10)
# Rakuten Travel API
Rakuten::Api::Travel::Search        # Travel Search API (version:2013-10-24)
Rakuten::Api::Travel::DetailSearch  # Travel Detail Search API (version:2013-10-24)
Rakuten::Api::Travel::VacantSearch  # Travel Vacant Search API (version:2013-10-24)           
Rakuten::Api::Travel::AreaCode      # Travel Area Code API (version:2013-10-24)           
Rakuten::Api::Travel::KeywordSearch # Travel Keyword Search API (version:2013-10-24)           
Rakuten::Api::Travel::ChainList     # Travel Chain List API (version:2013-10-24)           
Rakuten::Api::Travel::Ranking       # Travel Ranking API (version:2013-10-24)           
# Rakuten Bookmark API
Rakuten::Api::Bookmark::List   # Favorite Bookmark List API (version:2012-06-27)
Rakuten::Api::Bookmark::Add    # Favorite Bookmark Add API (version:2012-06-27)
Rakuten::Api::Bookmark::Delete # Favorite Bookmark Delete API (version:2012-06-27)
# Rakuten Recipe API
Rakuten::Api::Recipe::CategoryList    # Recipe Category List API (version:2012-11-21)
Rakuten::Api::Recipe::CategoryRanking # Recipe Category Ranking API (version:2012-11-21)
# Rakuten GORA API
Rakuten::Api::Gora::Search       # Gora Search API (version:2013-11-13)
Rakuten::Api::Gora::DetailSearch # Gora Detail Search API (version:2013-11-13)
Rakuten::Api::Gora::PlanSearch   # Gora Plan Search API (version:2013-11-13)
# Rakuten Etc API
Rakuten::Api::Etc::DynamicAd          # Dynamic Ad API
Rakuten::Api::Etc::DynamicAdTravel    # Dynamic Ad Travel API
Rakuten::Api::Etc::HighCommissionShop # High Commission Shop API (version:2012-03-13)
# Rakuten Kobo API
Rakuten::Api::Kobo::Search      # Kobo Ebook Search API (version:2013-10-10)
Rakuten::Api::Kobo::GenreSearch # Kobo Genre Search API (version:2013-10-10)
```

Refer to [Rakuten Web API documentation](https://webservice.rakuten.co.jp/document/) for more infomation.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
