class DirectorsController < ApplicationController
  def index
    @directors = Director.all

    render("directors/index.html.erb")
  end

  def show
    director = Director.find(params["id"])

        @director.id =director.id
        @director.dob = director.dob
        @director.name = director.name
        @director.bio = director.bio
        @director.the_image_url = director.the_image_url

    render("directors/show_details.html.erb")
  end

  def new
  end

  def create_row
    @director = Director.new
    @director.dob = params["dob"]
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.image_url = params["image_url"]

    @director.save

    render("new_form.html.erb")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    @director.save

    render("show.html.erb")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
    
  end
end
