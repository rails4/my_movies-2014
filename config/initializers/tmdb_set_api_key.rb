puts "-"*44
puts "API KEY: #{ENV['TMDB_API_KEY']}"
puts "-"*44
Tmdb::Api.key(ENV['TMDB_API_KEY'])
Tmdb::Api.language("en")  # setup your default language
