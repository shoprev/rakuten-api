module Rakuten

  class Api

    class Ichiba
      
      Search = "Rakuten::Api::Ichiba.search"
      GenreSearch = "Rakuten::Api::Ichiba.genre_search"
      Ranking = "Rakuten::Api::Ichiba.ranking"

      class << self

        # Ichiba Item Search API (version:2013-08-05)
        def search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130805", Rakuten::Api.merge(opts))
        end

        # Ichiba Genre Search API (version:2012-07-23)
        def genre_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/IchibaGenre/Search/20120723", Rakuten::Api.merge(opts))
        end

        # Ichiba Item Ranking API (version:2012-09-27)
        def ranking(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/IchibaItem/Ranking/20120927", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
