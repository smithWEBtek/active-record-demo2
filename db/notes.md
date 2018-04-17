

artist
has_many :songs


songs
belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genres

song_genre
belongs_to :song 
belongs_to :genre 

genre 
has_many :song_genres
has_many :songs, through: :song_genres