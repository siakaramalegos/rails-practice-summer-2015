namespace :db do
  desc "Clear the Artist and Song tables and fill with excellent sample data"
  task :populate => :environment do
    require 'populator'
    require 'faker'

    # Clear out the old junk
    [Artist, Song].each(&:destroy_all)

    # Add genres, artists, and songs
    Genre.all.each do |genre|
      Artist.populate 5..10 do |artist|
        artist.name = Faker::Name.first_name
        artist.genre_id = genre.id
        Song.populate 10..20 do |song|
          song.name = Faker::Company.catch_phrase
          song.artist_id = artist.id
        end
      end
    end

    puts "BOOYA!  Done populating!"
  end
end