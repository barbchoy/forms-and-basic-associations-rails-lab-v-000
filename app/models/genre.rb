class Genre < ActiveRecord::Base
  # add associations
  has_many :songs

  def song_ids=(ids)
    ids.each do |id|
      song = Song.find(id)
      self.songs << song
    end
  end
end
