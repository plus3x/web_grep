module WebGrep
  class Grep
    def initialize(word:,url:,file:)
      if file && url
        # raise 'Should set one of params, url or file'
      end
      @word, @url, @file = word, url, file
    end

    def grep!
      "Word: #{@word}\n" \
      "URL:  #{@url}\n"  \
      "File: #{@file}"
    end
  end
end