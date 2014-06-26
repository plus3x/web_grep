module WebGrep
  class Grep
    def initialize(word:,url:,file:)
      @word, @url, @file = word, url, file
    end

    def grep!
      "Word: #{@word}\n" \
      "URL:  #{@url}\n"  \
      "File: #{@file}"
    end
  end
end