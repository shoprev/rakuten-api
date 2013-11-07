module Rakuten

  class Api

    class Books

      TotalSearch = "Rakuten::Api::Books.total_search"
      BookSearch = "Rakuten::Api::Books.book_search"
      CdSearch = "Rakuten::Api::Books.cd_search"
      DvdSearch = "Rakuten::Api::Books.dvd_search"
      ForeignBookSearch = "Rakuten::Api::Books.foreign_book_search"
      MagazineSearch = "Rakuten::Api::Books.magazine_search"
      GameSearch = "Rakuten::Api::Books.game_search"
      SoftwareSearch = "Rakuten::Api::Books.software_search"
      GenreSearch = "Rakuten::Api::Books.genre_search"

      class << self

        # Books Total Search API (version:2013-05-22)
        def total_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksTotal/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Book Search API (version:2013-05-22)
        def book_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksBook/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books CD Search API (version:2013-05-22)
        def cd_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksCD/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books DVD Search API (version:2013-05-22)
        def dvd_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksDVD/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Foreign Book Search API (version:2013-05-22)
        def foreign_book_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksForeignBook/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Magazine Search API (version:2013-05-22)
        def magazine_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksMagazine/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Game Search API (version:2013-05-22)
        def game_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksGame/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Software Search API (version:2013-05-22)
        def software_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksSoftware/Search/20130522", Rakuten::Api.merge(opts))
        end

        # Books Genre Search API (version:2012-11-28)
        def genre_search(opts={})
          Rakuten::Request.get("https://app.rakuten.co.jp/services/api/BooksGenre/Search/20121128", Rakuten::Api.merge(opts))
        end

      end

    end

  end

end
