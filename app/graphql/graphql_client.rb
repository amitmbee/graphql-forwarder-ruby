class GraphqlClient
  def initialize(url)
    @url = url
  end

  def execute(query:)
    HTTParty.post(
      @url,
      headers: {
        'Content-Type'  => 'application/json'
      },
      body: {
        query: query,
      }.to_json
    )
  end
end