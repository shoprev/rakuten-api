require "net/http"
require "uri"
require "cgi"
require "json"
require "rakuten/api/version"
require "rakuten/api/response"
require "rakuten/api/request"
require "rakuten/api/auction"
require "rakuten/api/bookmark"
require "rakuten/api/books"
require "rakuten/api/etc"
require "rakuten/api/gora"
require "rakuten/api/ichiba"
require "rakuten/api/product"
require "rakuten/api/recipe"
require "rakuten/api/travel"

module Rakuten

  class Api

    @@options = {}

    class << self
      
      def options
        @@options
      end

      def configure(&proc)
        raise ArgumentError, "Block is required." unless block_given?
        yield @@options
      end

      def get(method,opts={})
        eval method+"(#{opts})"
      end

    end
    
  end

end
