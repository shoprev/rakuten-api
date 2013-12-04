module Rakuten

  class Api

    class Gora

      Search = "Rakuten::Api::Gora.search"
      DetailSearch = "Rakuten::Api::Gora.detail_search"
      PlanSearch = "Rakuten::Api::Gora.plan_search"

      class << self

        # Gora Search API (version:2013-11-13)
        def search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Gora/GoraGolfCourseSearch/20131113", Rakuten::Api.merge(opts))
        end

        # Gora Detail Search API (version:2013-11-13)
        def detail_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Gora/GoraGolfCourseDetail/20131113", Rakuten::Api.merge(opts))
        end

        # Gora Plan Search API (version:2013-11-13)
        def plan_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Gora/GoraPlanSearch/20131113", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
