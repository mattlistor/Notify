class ArtistsController < ApplicationController

  # GET: /artists
  get "/artists" do
    @artists = Artist.all
    erb :"/artists/index.html"
  end

  # GET: /artists/new
  get "/artists/new" do
    erb :"/artists/new.html"
  end

  # POST: /artists
  post "/artists" do
    Artist.create(params)
    redirect "/artists"
  end

  # GET: /artists/5
  get "/artists/:id" do
    @artist = Artist.find(params[:id])
    erb :"/artists/show.html"
  end

  # GET: /artists/5/edit
  get "/artists/:id/edit" do
    erb :"/artists/edit.html"
  end

  # PATCH: /artists/5
  patch "/artists/:id" do
    redirect "/artists/:id"
  end

  # DELETE: /artists/5/delete
  delete "/artists/:id/delete" do
    redirect "/artists"
  end
end
