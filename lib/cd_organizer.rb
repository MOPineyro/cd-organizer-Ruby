require './lib/artist'
require './lib/album'

class CD
  attr_reader(:artist, :album)
  @@all_cds = []
  # def initialize(attributes)
  #   @artist = attributes[:artist]
  #   @album = attributes[:album]
  # end
  def CD.all
    @@all_cds
  end

  def CD.clear
    @@all_cds = []
  end


  def initialize(artist, album)
    @artist = artist
    @album = album
  end

  def CD.create(artist, album)
    new_cd = CD.new(artist,album)
    new_artist = Artist.new(artist)
    new_album = Album.new(album)
    @@all_cds << new_cd
    new_cd
    end

  def CD.search(search_term)
    index_of_search_word = CD.all.find_index { |obj| obj.artist == search_term || obj.album == search_term }
    CD.all[index_of_search_word]
   end
end
