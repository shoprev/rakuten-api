module Rakuten

  class Request

    def self.get(path,opts)
      uri = URI.parse("#{path}?#{opts.map {|k,v|"#{k}=#{CGI.escape(v)}"}.join('&')}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.instance_of?(URI::HTTPS)
      Rakuten::Response.new(http.start {http.get(uri.request_uri)})
    end

  end

end
