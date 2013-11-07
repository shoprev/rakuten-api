module Rakuten

  class Api

    class Travel

      Search = "Rakuten::Api::Travel.search"
      DetailSearch = "Rakuten::Api::Travel.detail_search"
      VacantSearch = "Rakuten::Api::Travel.vacant_search"
      AreaCode = "Rakuten::Api::Travel.area_code"
      KeywordSearch = "Rakuten::Api::Travel.keyword_search"
      ChainList = "Rakuten::Api::Travel.chain_list"
      Ranking = "Rakuten::Api::Travel.ranking"

      class << self

        # Travel Search API (version:2013-10-24)
        def search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/SimpleHotelSearch/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Detail Search API (version:2013-10-24)
        def detail_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/HotelDetailSearch/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Vacant Search API (version:2013-10-24)           
        def vacant_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/VacantHotelSearch/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Area Code API (version:2013-10-24)           
        def area_code(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/GetAreaClass/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Keyword Search API (version:2013-10-24)           
        def keyword_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/HotelKeywordSearch/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Chain List API (version:2013-10-24)           
        def chain_list(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/GetHotelChainList/20131024", Rakuten::Api.merge(opts))
        end

        # Travel Ranking API (version:2013-10-24)           
        def ranking(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Travel/HotelRanking/20131024", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
