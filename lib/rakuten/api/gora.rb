module Rakuten

  class Api

    class Gora

      Search = "Rakuten::Api::Gora.search"
      DetailSearch = "Rakuten::Api::Gora.detail_search"
      PlanSearch = "Rakuten::Api::Gora.plan_search"

      class << self

        # Gora Search API (version:2010-06-30)
        def search(opts={})
          opts[:version] = '2010-06-30' unless opts.key?(:version)
          opts[:operation] = 'GoraGolfCourseSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", Rakuten::Api.merge(opts))
        end

        # Gora Detail Search API (version:2010-06-30)
        def detail_search(opts={})
          opts[:version] = '2010-06-30' unless opts.key?(:version)
          opts[:operation] = 'GoraGolfCourseDetail' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", Rakuten::Api.merge(opts))
        end

        # Gora Plan Search API (version:2012-12-10)
        def plan_search(opts={})
          opts[:version] = '2012-12-10' unless opts.key?(:version)
          opts[:operation] = 'GoraPlanSearch' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
