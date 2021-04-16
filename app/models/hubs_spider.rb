class HubsSpider < Kimurai::Base
  @name = 'hubs_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    # item = {}
    # item[:active] = response.xpath("//div[@class='proxy']").count
    active_nodes = response.xpath("//div[@class='proxy']").count
    # item[:hub_number] = url.match(/selenium-hub(\d+)/)[1]
    # Hub.where(item).first_or_create
    hub = Hub.find_by(url: url)
    hub.active = active_nodes
    hub.save
  end
end
