namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    # Clear out the old junk
    [Genre, Artist, Song].each(&:destroy_all)

    # Add fake data to those tables
    Genre.populate 5 do |genre|
      # Set the genre name
      genre.name = Faker::Hacker.noun

      # Create artists inside that genre
      Artist.populate 5..10 do |artist|
        # Set the artist name and genre id
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id

        Song.populate 5..10 do |song|
          # Set the name and artist id
          song.name = Faker::Company.catch_phrase
          song.artist_id = artist.id
        end # Song end
      end # Artist end
    end # Genre end

    puts "BOOYA!  Done populating!"
  end
end