class Example < ApplicationRecord
  validates :name, presence: true

  #
  # Dummy method for testing
  #
  def foo_bar
    raise NotImplementedError
  end

  #
  # Return nationality base on name (use external API)
  # @return String
  #
  def nationality
    response = http_get(url: 'https://example.com/api/nationality', query: { name: name })
    return '' unless response.code == '200'

    json_res = JSON.parse response.body
    json_res['data']['nationality']
  end

  private

  def http_get(url:, query:)
    uri = URI.parse(url)
    uri.query = URI.encode_www_form(query)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == 'https'
    http.get(uri.request_uri, 'Content-Type' => 'application/json')
  end
end
