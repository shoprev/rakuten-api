module Rakuten

  class Api

    class Product

      Search = "Rakuten::Api::Product.search"
      DetailSearch = "Rakuten::Api::Product.detail_search"
      GenreSearch = "Rakuten::Api::Product.genre_search"

      class << self

        # Product Search API (version:2010-11-18)
        def search(opts={})
          opts[:version] = '2010-11-18' unless opts.key?(:version)
          opts[:operation] = 'ProductSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Product Detail Search API (version:2011-07-14)
        def detail_search(opts={})
          opts[:version] = '2011-07-14' unless opts.key?(:version)
          opts[:operation] = 'ProductDetail' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Product Genre Search API (version:2010-11-18)
        def genre_search(opts={})
          opts[:version] = '2010-11-18' unless opts.key?(:version)
          opts[:operation] = 'ProductGenreInfo' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

      end

    end

  end

end
