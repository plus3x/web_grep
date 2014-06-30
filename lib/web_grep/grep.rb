require 'nokogiri'
require 'open-uri'

module WebGrep
  class Grep
    def initialize(word:,url:,file:,quite:)
      raise 'Should set one of params, url or file!' if file && url
      url = "http://#{url}" if url && !url.match('http[s]{0,1}://')

      @word, @url, @file, @quite = word, url, file, quite
    end

    def grep!
      Nokogiri::XML(open(@url || @file)).
        xpath ".//text()[regex(., '#{@word}')]", Class.new {
          def regex(node_set, regex)
            node_set.find_all { |node| node.content.match regex }
          end
        }.new
    rescue SocketError
      raise 'Bad url or connection!'
    end
  end
end