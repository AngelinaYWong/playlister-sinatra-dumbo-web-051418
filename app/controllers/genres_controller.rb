class GenresController < ApplicationController
  get '/genres' do
    @genres = Genre.all
    erb :'genres/index'
  end

  get '/genres/:slug' do
    genre_slug = params["slug"]
    @genre = Genre.find_by_slug(genre_slug)
    erb :'genres/show'
  end

end
