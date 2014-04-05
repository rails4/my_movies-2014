module ApplicationHelper

  TmdbConfiguration = Tmdb::Configuration.new

  # <%= image_tag("#{@configuration.base_url}w154#{image['file_path']}") if image['file_path'] %>
  # <%= image_tag("#{@configuration.base_url}w92#{movie['poster_path']}") if movie['poster_path'] %>
  def movie_poster(path)
    if path
      image_tag("#{TmdbConfiguration.base_url}w154#{path}")
    else
      ""
    end
  end

  # <%= image_tag("#{@configuration.base_url}w300#{cast['profile_path']}") if cast['profile_path'] %>
  def cast_poster(path)
    if path
      image_tag("#{TmdbConfiguration.base_url}w300#{path}")
    else
      ""
    end
  end


end
