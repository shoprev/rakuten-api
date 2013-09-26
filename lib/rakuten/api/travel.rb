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

        # Travel Search API (version:2009-10-20)
        def search(opts={})
          opts[:version] = '2009-10-20' unless opts.key?(:version)
          opts[:operation] = 'SimpleHotelSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Detail Search API (version:2009-09-09)
        def detail_search(opts={})
          opts[:version] = '2009-09-09' unless opts.key?(:version)
          opts[:operation] = 'HotelDetailSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Vacant Search API (version:2009-10-20)           
        def vacant_search(opts={})
          opts[:version] = '2009-10-20' unless opts.key?(:version)
          opts[:operation] = 'VacantHotelSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Area Code API (version:2009-03-26)           
        def area_code(opts={})
          opts[:version] = '2009-03-26' unless opts.key?(:version)
          opts[:operation] = 'GetAreaClass' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Keyword Search API (version:2009-10-20)           
        def keyword_search(opts={})
          opts[:version] = '2009-10-20' unless opts.key?(:version)
          opts[:operation] = 'KeywordHotelSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Chain List API (version:2009-05-12)           
        def chain_list(opts={})
          opts[:version] = '2009-05-12' unless opts.key?(:version)
          opts[:operation] = 'GetHotelChainList' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

        # Travel Ranking API (version:2009-06-25)           
        def ranking(opts={})
          opts[:version] = '2009-06-25' unless opts.key?(:version)
          opts[:operation] = 'HotelRanking' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

      end

    end

  end

end
