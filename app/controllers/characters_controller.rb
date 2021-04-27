class CharactersController < ApplicationController


  get "/characters" do
    erb :"characters/index"
  end

  get "/cheese" do
    erb :"characters/cheese"
  end


end
