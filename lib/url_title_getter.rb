require 'url_title_getter/version'
require 'open-uri'
require 'nkf'
require 'nokogiri'

module UrlTitleGetter
  def self.get_title(url, time_out_sec = 5)
    begin
      Timeout::timeout(time_out_sec) do
        url.strip!
        read_data = NKF.nkf('-w -W', open(url).read)
        title = Nokogiri::HTML.parse(read_data, nil, 'utf8').xpath('//title').text
        title.strip!
        title
      end
    rescue
      nil
    end
  end

  def self.get_decode_url(raw_url)
    url = URI.decode(raw_url)
    begin
      url.count('?')
      url
    rescue
      raw_url
    end
  end
end
