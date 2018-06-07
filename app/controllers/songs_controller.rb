class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/:slug' do
    song_slug = params["slug"]
    @song = Song.find_by_slug(song_slug)
    erb :'songs/show'
  end

end
