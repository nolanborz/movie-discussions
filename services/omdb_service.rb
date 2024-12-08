class OmdbService
  include HTTParty
  base_uri 'http://www.omdbapi.com'

  def search_movie(title)
    response = self.class.get("/", query: { apikey: ENV['OMDB_API_KEY'],
    t: title
  })

  JSON.parse(response.body) if response.success?
  end
end
