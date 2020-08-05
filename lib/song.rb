class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

def initialize(song_title, name_of_artist, genre)
@name = song_title
@artist = name_of_artist
@genre = genre

@@count+=1
@@genres<<@genre
@@artists<<@artist
end

def self.count
@@count
end

def self.artists
@@artists.uniq
end

def self.genres
@@genres.uniq
end

def self.genre_count
    genre_count = {}
    self.genres.each do |uniq_genre|
        genre_count[uniq_genre] = @@genres.count(uniq_genre)
    end
    genre_count
end

 # {"rap" => 5, "rock" => 1, "country" => 3}

def self.artist_count
artist_count = {}
    self.artists.each do |uniq_artist|
        artist_count[uniq_artist] = @@artists.count(uniq_artist)
    end
    artist_count
end

# => {"Beyonce" => 17, "Jay-Z" => 40}

end