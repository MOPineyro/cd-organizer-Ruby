require 'rspec'
require 'cd_organizer'

describe CD do
  before do
    CD.clear
  end
    describe '.all' do
    it 'is empty at first' do
      CD.all.should eq []
    end
  end
  # it 'is initalized with a hash of attributes' do
  #   cd = CD.new({:artist => "Michael Jackson", :album => "Thriller"})
  #   cd.should be_an_instance_of CD
  # end

  describe 'CD.create' do
    it 'Creates CD and does stuff' do
      test_cd = CD.create("Michael Jackson", "Thriller")
      CD.all[0].artist.should eq "Michael Jackson"
      CD.all[0].album.should eq "Thriller"
    end
  end
  describe ".clear" do
    it 'empties out all the saved terms' do
      CD.new("Michael Jackson", "Bad")
      CD.clear
      CD.all.should eq []
    end
  end
  describe 'CD.search' do
    it 'searches for a cd by artist or album' do
      test_cd1 = CD.create("Michael Jackson", "Bad")
      CD.search('Michael Jackson').should eq test_cd1
    end
  end

end

describe Artist do
  it 'initalizes the artist of a cd' do
    test_artist = Artist.new("Michael Jackson")
    test_artist.should be_an_instance_of Artist
  end
end

describe Album do
  it 'initializes the album of a cd' do
    test_album = Album.new("Thriller")
    test_album.should be_an_instance_of Album
  end
end
