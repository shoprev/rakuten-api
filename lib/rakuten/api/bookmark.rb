module Rakuten

  class Api

    class Bookmark

      List = "Rakuten::Api::Bookmark.list"
      Add = "Rakuten::Api::Bookmark.add"
      Delete = "Rakuten::Api::Bookmark.delete"

      class << self

      # Favorite Bookmark List API (version:2012-06-27)
      def list(opts={})
        Rakuten::Request.get("https://app.rakuten.co.jp/services/api/FavoriteBookmark/List/20120627", opts.merge(Rakuten::Api.options))
      end

      # Favorite Bookmark Add API (version:2012-06-27)
      def add(opts={})
        Rakuten::Request.get("https://app.rakuten.co.jp/services/api/FavoriteBookmark/Add/20120627", opts.merge(Rakuten::Api.options))
      end

      # Favorite Bookmark Delete API (version:2012-06-27)
      def delete(opts={})
        Rakuten::Request.get("https://app.rakuten.co.jp/services/api/FavoriteBookmark/Delete/20120627", opts.merge(Rakuten::Api.options))
      end

      end

    end

  end

end
