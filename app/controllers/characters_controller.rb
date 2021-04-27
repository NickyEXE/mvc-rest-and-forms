class CharactersController < ApplicationController

  get "/characters/new" do
    erb :"characters/new"
  end

  get "/characters/:id" do
    @character = Character.find(params[:id])
    erb :"characters/show"
  end

  get "/characters" do
    @characters = Character.all
    erb :"characters/index"
  end

  post "/characters" do
    character = Character.new(params)
    character.save
    redirect "/characters/#{character.id}"
  end

end
