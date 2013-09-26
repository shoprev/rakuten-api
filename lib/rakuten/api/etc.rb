module Rakuten

  class Api

    class Etc

      DynamicAd = "Rakuten::Api::Etc.dynamic_ad"
      DynamicAdTravel = "Rakuten::Api::Etc.dynamic_ad_travel"
      HighCommissionShop = "Rakuten::Api::Etc.high_commission_shop"

      class << self

        # Dynamic Ad API
        def dynamic_ad(opts={})
          Rakuten::Request.get("http://dynamic.rakuten.co.jp/rcm/1.0/i/json", opts.merge(Rakuten::Api.options))
        end

        # Dynamic Ad Travel API
        def dynamic_ad_travel(opts={})
          Rakuten::Request.get("http://dynamic.rakuten.co.jp/rcm/1.0/t/json", opts.merge(Rakuten::Api.options))
        end

        # High Commission Shop API (version:2012-03-13)
        def high_commission_shop(opts={})
          opts[:version] = '2012-03-13' unless opts.key?(:version)
          opts[:operation] = 'HighCommissionShop' unless opts.key?(:operation)
          opts[:developerId] = Rakuten::Api.options[:applicationId] unless opts.key?(:developerId)
          Rakuten::Request.get("http://api.rakuten.co.jp/rws/3.0/json", opts.merge(Rakuten::Api.options))
        end

      end

    end

  end

end
