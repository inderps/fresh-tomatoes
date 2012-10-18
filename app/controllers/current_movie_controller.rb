class CurrentMovieController < ApplicationController
  def index
    current_movies = CurrentMovie.all
    render :json => current_movies
  end

  def test_create
    CurrentMovie.create(:title => "Sholay",
                        :description => "Sholay is a 1975 Indian action-adventure film produced by G.P. Sippy and directed by his son Ramesh Sippy. The movie is considered by the Encyclopaedia of Hindi Cinema to be among the greatest films in Indian cinema",
                        :director  => "Ramesh Sippy",
                        :actors => "Dharmendra, Sanjeev Kumar, Amitabh Bachchan",
                        :image_url => "http://upload.wikimedia.org/wikipedia/en/thumb/5/52/Sholay-poster.jpg/220px-Sholay-poster.jpg",
                        :votes => 5,
                        :language => "Hindi")
    CurrentMovie.create(:title => "Aag",
                        :description => "Aag is a Bollywood drama written, produced and directed by Ram Gopal Varma and starring Amitabh Bachchan, Mohanlal, Ajay Devgan and Sushmita Sen in lead roles. The film was released on 31 August 2007",
                        :director  => "Ram Gopal Varma",
                        :actors => "Mohanlal, Ajay Devgan, Sushmita Sen",
                        :image_url => "http://upload.wikimedia.org/wikipedia/en/thumb/3/3d/Aag_2007_Film_Poster.jpg/220px-Aag_2007_Film_Poster.jpg",
                        :votes => -5,
                        :language => "Hindi")
    CurrentMovie.create(:title => "Man on Fire",
                        :description => "Man on Fire is a 2004 American thriller film, and the second adaptation of A. J. Quinnell's 1980 novel of the same name; the first film based on the novel was released in 1987.",
                        :director  => "Tony Scott",
                        :actors => "Mohanlal, Ajay Devgan, Sushmita Sen",
                        :image_url => "http://upload.wikimedia.org/wikipedia/en/thumb/e/e8/Man_on_fireposter.jpg/220px-Man_on_fireposter.jpg",
                        :votes => 8,
                        :language => "English")

    render :nothing => true
  end
end