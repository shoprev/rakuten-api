module Rakuten

  class Api

    class Kobo

      Search = "Rakuten::Api::Kobo.search"
      GenreSearch = "Rakuten::Api::Kobo.genre_search"

      class << self

        # Ichiba Item Search API (version:2013-08-05)
        def search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130805", Rakuten::Api.merge(opts))
        end

        # Kobo Genre Search API (version:2013-10-10)
        def genre_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Kobo/GenreSearch/20131010", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
