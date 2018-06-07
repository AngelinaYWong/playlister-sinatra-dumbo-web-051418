class SongsController < ApplicationController
  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end


  get '/songs/new' do
    erb :'songs/new'
  end

  post "/songs/new" do
  song = Song.new(song_params)
  if book.save
  # If we are successful, redirect to the show page
  redirect "/songs/:slug"
  else
  # If we fail, redirect to the new form
  redirect '/books/new'
    end
  end

  get '/songs/:slug' do
    song_slug = params["slug"]
    @song = Song.find_by_slug(song_slug)
    erb :'songs/show'
  end


end
