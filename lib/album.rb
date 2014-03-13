class Album
  attr_reader(:album_name)
  @@albums =[]
  def initialize(album_name)
    @album_name = album_name
  end

end
