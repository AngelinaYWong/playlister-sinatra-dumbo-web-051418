class ArtistsController < ApplicationController

  get '/artists' do
    @artists = Artist.all
    erb :'artists/index'
  end

  get '/artists/:slug' do
    artist_slug = params["slug"]
    @artist = Artist.find_by_slug(artist_slug)
    erb :'artists/show'
  end

end
