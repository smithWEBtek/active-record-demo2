Artist.create(name: 'Miles Davis', hometown: 'Atlanta')
Artist.create(name: 'Jimmy Buffet', hometown: 'Jacksonville')
Artist.create(name: 'Charlie Pride', hometown: 'Memphis')
Artist.create(name: 'Slim Whitman', hometown: 'Toronto')
Artist.create(name: 'Firehouse Five', hometown: 'Chicago')

Genre.create(name: 'Blues')
Genre.create(name: 'Hip Hop')
Genre.create(name: 'Country')
Genre.create(name: 'Swing')
Genre.create(name: 'Bluegrass')

Song.create(name: 'My Blues', artist_id: 1)
Song.create(name: 'Alice the Goon', artist_id: 2)
Song.create(name: 'Somewhere', artist_id: 3)
Song.create(name: 'Blue Moom', artist_id: 4)
Song.create(name: 'Limehouse Blues', artist_id: 5)
Song.create(name: 'Sonny', artist_id: 2)
# Song.create(name: 'Bob', artist_id: 2)
 
SongGenre.create(song_id: 1, genre_id: 1)
SongGenre.create(song_id: 2, genre_id: 2)
SongGenre.create(song_id: 3, genre_id: 3)
SongGenre.create(song_id: 4, genre_id: 4)
SongGenre.create(song_id: 5, genre_id: 5)
SongGenre.create(song_id: 6, genre_id: 3)
SongGenre.create(song_id: 1, genre_id: 2)
SongGenre.create(song_id: 2, genre_id: 3)
SongGenre.create(song_id: 3, genre_id: 4)
SongGenre.create(song_id: 4, genre_id: 5)
SongGenre.create(song_id: 5, genre_id: 1)
SongGenre.create(song_id: 6, genre_id: 2)