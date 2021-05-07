class HubsSpider < Kimurai::Base
  @name = 'hubs_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    item = {}
    item[:active] = response.xpath("//div[@class='proxy']").count
    item[:hub_number] = url.match(/selenium-hub(\d+)/)[1]
    hub = Hub.where(hub_number: item[:hub_number]).first_or_create
    hub.update!(active: item[:active], url: url)
  end
end
