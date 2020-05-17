class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
   # binding.pry
    # drake = Artist.where(:name => 'Drake')
    # if drake.exists?
    #   #drake.songs << self
    #   self.artist = drake
    # else
    #   new_drake = Artist.create(name: "Drake")
    #   #new_drake.songs << self
    #   self.artist = new_drake
    #end

    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake

  end
end