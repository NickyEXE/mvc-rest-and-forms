class CharactersController < ApplicationController


  # Read - Index
  get "/characters" do
    @characters = Character.all
    erb :"characters/index"
  end

  # Show

  get "/characters/:id" do
    # whatever's put in the id section gets added to params at a key of id
    @character = Character.find(params[:id])
    erb :"characters/show"
  end

  # New

  # Create

  # Edit

  # Update

  # Delete

  get "/cheese" do
    erb :"characters/cheese"
  end


end
