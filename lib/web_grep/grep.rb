require 'nokogiri'
require 'open-uri'

require 'pry'

module WebGrep
  class Grep
    def initialize(word:,url:,file:,quite:)
      if file && url
        raise 'Should set one of params, url or file!'
      end
      if url && !url.match('http://|https://')
        url = "http://#{url}"
      end
      @word, @url, @file, @quite = word, url, file, quite
    end

    def grep!
      Nokogiri::XML(open(@url || @file)).search('[text()*=""]').select do |e|
        e.content
          .encode('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '')
          .match /#{@word}/
      end
    rescue SocketError
      raise 'Bad url or connection!'
    end
  end
end