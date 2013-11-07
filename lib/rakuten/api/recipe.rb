module Rakuten

  class Api

    class Recipe

      CategoryList = "Rakuten::Api::Recipe.category_list"
      CategoryRanking = "Rakuten::Api::Recipe.category_ranking"

      class << self

        # Recipe Category List API (version:2012-11-21)
        def category_list(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Recipe/CategoryList/20121121", Rakuten::Api.merge(opts))
        end

        # Recipe Category Ranking API (version:2012-11-21)
        def category_ranking(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/20121121", Rakuten::Api.merge(opts))

        end

      end

    end

  end

end
