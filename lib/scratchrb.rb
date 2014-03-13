require './lib/artist'
require './lib/album'
@@all_cds = []
class CD
  attr_reader(:artist, :album)

  def initialize(attributes_hash)
    @artist = attributes_hash[:artist]
    @album = attributes_hash[:album]
    @all_albums =[]
  end

  def CD.create(artist_name, album_name)
    new_cd = CD.new(artist_name,album_name)
  end

  def add_artist(artist_name, album_name)
  new_artist = Artist.new(artist_name)
  @all_albums << album_name
  end

end
puts CD("artist_name","album_name")
puts @all_albums

require 'rspec'
require 'cd_organizer'

describe CD do
  describe '.create' do
    it 'it creates a new cd' do
      test_artist = Artist.new('Michael Jackson')
      test_album = Album.new("Bad")
      test_cd = CD.create("Michael Jackson" "Thriller")
      test_cd.artist.name.should eq "Michael Jackson"
    end

    #   test_cd.artist.name.should eq "Michael Jackson"
    #   it 'is initalized a hash of CDs' do
    #   test_cd = CD.new({:artist => "Michael Jackson",:album =>"Thriller"})
    #   test_cd.should be_an_instance_of CD
    # end

end

describe Artist do
  it 'initalizes the artist of a cd' do
    test_artist = Artist.new("Michael Jackson")
    test_artist.should be_an_instance_of Artist
    test_artist.name.should eq "Michael Jackson"
  end
end

# describe Album do
#   it 'initializes the album of a cd' do
#     test_album = Album.new("Thriller")
#     test_album.should be_an_instance_of Album
#     test_album.name.should eq "Thriller"
#   end
end
