# require 'httparty'
require "net/http"
require "uri"
require "cgi"
require "json"
require "rakuten/api/version"
require "rakuten/api/response"
# require "rakuten/api/request"
# require "rakuten/api/auction"
# require "rakuten/api/bookmark"
# require "rakuten/api/books"
# require "rakuten/api/etc"
# require "rakuten/api/gora"
# require "rakuten/api/ichiba"
# require "rakuten/api/product"
# require "rakuten/api/recipe"
# require "rakuten/api/travel"

module Rakuten

  class Api

    # include HTTParty
    # base_uri 'https://app.rakuten.co.jp/services/api'
    # format :json
    @@options = {}

    class << self
      
      def options
        @@options
      end

      def configure(&proc)
        raise ArgumentError, "Block is required." unless block_given?
        yield @@options
      end

      def get(method,opts={})
        eval method+"(#{opts})"
      end
=begin
      ### Rakuten Ichiba API ###

      # Ichiba Item Search API (version:2013-08-05)
      def ichiba_search(opts={})
        get("/IchibaItem/Search/20130805", :query => opts.merge(@@options))
      end

      # Ichiba Genre Search API (version:2012-07-23)
      def ichiba_genre_search(opts={})
        get("/IchibaGenre/Search/20120723", :query => opts.merge(@@options))
      end

      # Ichiba Item Ranking API (version:2012-09-27)
      def ichiba_ranking(opts={})
        get("/IchibaItem/Ranking/20120927", :query => opts.merge(@@options))
      end

      ### Rakuten Product API ###

      # Product Search API (version:2010-11-18)
      def product_search(opts={})
        opts[:version] = '2010-11-18' unless opts.key?(:version)
        opts[:operation] = 'ProductSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Product Detail Search API (version:2011-07-14)
      def product_detail_search(opts={})
        opts[:version] = '2011-07-14' unless opts.key?(:version)
        opts[:operation] = 'ProductDetail' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Product Genre Search API (version:2010-11-18)           
      def product_genre_search(opts={})
        opts[:version] = '2010-11-18' unless opts.key?(:version)
        opts[:operation] = 'ProductGenreInfo' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      ### Rakuten Books API ###

      # Books Total Search API (version:2013-05-22)
      def books_total_search(opts={})
        get("/BooksTotal/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Book Search API (version:2013-05-22)
      def books_book_search(opts={})
        get("/BooksBook/Search/20130522", :query => opts.merge(@@options))
      end

      # Books CD Search API (version:2013-05-22)
      def books_cd_search(opts={})
        get("/BooksCD/Search/20130522", :query => opts.merge(@@options))
      end

      # Books DVD Search API (version:2013-05-22)
      def books_dvd_search(opts={})
        get("/BooksDVD/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Foreign Book Search API (version:2013-05-22)
      def books_foreign_book_search(opts={})
        get("/BooksForeignBook/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Magazine Search API (version:2013-05-22)
      def books_magazine_search(opts={})
        get("/BooksMagazine/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Game Search API (version:2013-05-22)
      def books_game_search(opts={})
        get("/BooksGame/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Software Search API (version:2013-05-22)
      def books_software_search(opts={})
        get("/BooksSoftware/Search/20130522", :query => opts.merge(@@options))
      end

      # Books Genre Search API (version:2012-11-28)
      def books_genre_search(opts={})
        get("/BooksGenre/Search/20121128", :query => opts.merge(@@options))
      end

      ### Rakuten Auction API ###

      # Auction Genre Search API (version:2012-09-27)
      def auction_genre_search(opts={})
        get("/AuctionGenreId/Search/20120927", :query => opts.merge(@@options))
      end

      # Auction Genre Keyword Search API (version:2012-09-27)
      def auction_genre_keyword_search(opts={})
        get("/AuctionGenreKeyword/Search/20120927", :query => opts.merge(@@options))
      end

      # Auction Item Search API (version:2013-01-10)
      def auction_search(opts={})
        get("/AuctionItem/Search/20130110", :query => opts.merge(@@options))
      end

      # Auction Item Code Search API (version:2012-10-10)
      def auction_code_search(opts={})
        get("/AuctionItemCode/Search/20121010", :query => opts.merge(@@options))
      end

      ### Rakuten Travel API ###

      # Travel Search API (version:2009-10-20)
      def travel_search(opts={})
        opts[:version] = '2009-10-20' unless opts.key?(:version)
        opts[:operation] = 'SimpleHotelSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Detail Search API (version:2009-09-09)
      def travel_detail_search(opts={})
        opts[:version] = '2009-09-09' unless opts.key?(:version)
        opts[:operation] = 'HotelDetailSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Vacant Search API (version:2009-10-20)           
      def travel_vacant_search(opts={})
        opts[:version] = '2009-10-20' unless opts.key?(:version)
        opts[:operation] = 'VacantHotelSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Area Code API (version:2009-03-26)           
      def travel_area_code(opts={})
        opts[:version] = '2009-03-26' unless opts.key?(:version)
        opts[:operation] = 'GetAreaClass' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Keyword Search API (version:2009-10-20)           
      def travel_keyword_search(opts={})
        opts[:version] = '2009-10-20' unless opts.key?(:version)
        opts[:operation] = 'KeywordHotelSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Chain List API (version:2009-05-12)           
      def travel_chain_list(opts={})
        opts[:version] = '2009-05-12' unless opts.key?(:version)
        opts[:operation] = 'GetHotelChainList' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Travel Ranking API (version:2009-06-25)           
      def travel_ranking(opts={})
        opts[:version] = '2009-06-25' unless opts.key?(:version)
        opts[:operation] = 'HotelRanking' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      ### Rakuten Bookmark API ###

      # Favorite Bookmark List API (version:2012-06-27)
      def favorite_bookmark_list(opts={})
        get("/FavoriteBookmark/List/20120627", :query => opts.merge(@@options))
      end

      # Favorite Bookmark Add API (version:2012-06-27)
      def favorite_bookmark_add(opts={})
        get("/FavoriteBookmark/Add/20120627", :query => opts.merge(@@options))
      end

      # Favorite Bookmark Delete API (version:2012-06-27)
      def favorite_bookmark_delete(opts={})
        get("/FavoriteBookmark/Delete/20120627", :query => opts.merge(@@options))
      end

      ### Rakuten Recipe API ###

      # Recipe Category List API (version:2012-11-21)
      def recipe_category_list(opts={})
        get("/Recipe/CategoryList/20121121", :query => opts.merge(@@options))
      end

      # Recipe Category Ranking API (version:2012-11-21)
      def recipe_category_ranking(opts={})
        get("/Recipe/CategoryRanking/20121121", :query => opts.merge(@@options))

      end

      ### Rakuten GORA API ###

      # Gora Search API (version:2010-06-30)
      def gora_search(opts={})
        opts[:version] = '2010-06-30' unless opts.key?(:version)
        opts[:operation] = 'GoraGolfCourseSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Gora Detail Search API (version:2010-06-30)
      def gora_detail_search(opts={})
        opts[:version] = '2010-06-30' unless opts.key?(:version)
        opts[:operation] = 'GoraGolfCourseDetail' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      # Gora Plan Search API (version:2012-12-10)
      def gora_plan_search(opts={})
        opts[:version] = '2012-12-10' unless opts.key?(:version)
        opts[:operation] = 'GoraPlanSearch' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end

      ### Rakuten Etc API ###

      # Dynamic Ad API
      def dynamic_ad(opts={})
        get("http://dynamic.rakuten.co.jp/rcm/1.0/i/json", :query => opts.merge(@@options))
      end

      # Dynamic Ad Travel API
      def dynamic_ad_travel(opts={})
        get("http://dynamic.rakuten.co.jp/rcm/1.0/t/json", :query => opts.merge(@@options))
      end

      # High Commission Shop API (version:2012-03-13)
      def high_commission_shop(opts={})
        opts[:version] = '2012-03-13' unless opts.key?(:version)
        opts[:operation] = 'HighCommissionShop' unless opts.key?(:operation)
        opts[:developerId] = @@options[:applicationId] unless opts.key?(:developerId)
        get("http://api.rakuten.co.jp/rws/3.0/json", :query => opts.merge(@@options))
      end
=end
    end
    
  end

end
