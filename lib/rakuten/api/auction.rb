module Rakuten

  class Api

    class Auction

      GenreSearch = "Rakuten::Api::Auction.genre_search"
      GenreKeywordSearch = "Rakuten::Api::Auction.genre_keyword_search"
      Search = "Rakuten::Api::Auction.search"
      CodeSearch = "Rakuten::Api::Auction.code_search"

      class << self

        # Auction Genre Search API (version:2012-09-27)
        def genre_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/AuctionGenreId/Search/20120927", Rakuten::Api.merge(opts))
        end

        # Auction Genre Keyword Search API (version:2012-09-27)
        def genre_keyword_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/AuctionGenreKeyword/Search/20120927", Rakuten::Api.merge(opts))
        end

        # Auction Item Search API (version:2013-09-05)
        def search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/AuctionItem/Search/20130905", Rakuten::Api.merge(opts))
        end

        # Auction Item Code Search API (version:2012-10-10)
        def code_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/AuctionItemCode/Search/20121010", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
